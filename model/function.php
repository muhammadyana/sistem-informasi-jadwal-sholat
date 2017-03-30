<?PHP
	/**
	* registration DKM manager
	*/
//	include "loader/db.php";
	//include "config.php";
	/**
	* 
	*/
	define('DB_SERVER', 'localhost');
	define('DB_USERNAME', 'root');
	define('DB_PASSWORD', '');
	define('DB_DATABASE', 'simajid');

	class Connection
	{
		public $db;
		public function __construct(){
			$conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
			if ($conn->connect_errno) {
				printf("Couldn connect to database: %s\n", $conn->connect_error);
				die();
			}else{
				$this->db = $conn;
			}
			// echo "sukses";
		}
	}

	class User extends Connection {
		//public $db;
		private $_table = 'pengurus_dkm';
		private $_id = 'id';
		private $_dataMasjid = 'data_mosque';
		private $_UserID = 'user_id';
		function __construct(){
			parent::__construct();
		}

		/** registration process**/
		public function reg_dkm($nama,$email,$token,$hp,$password,$username){
			$password = md5($password);
			$sql = "SELECT * FROM $this->_table WHERE email='$email' OR username='$username'  ";
			//check available email or username
			$check = $this->db->query($sql); //process query into database
			$count_row = $check->num_rows;

			//if email available then insert into database
			if ($count_row == 0) {
				$sql1 = "INSERT INTO $this->_table SET nama='$nama',email='$email',password='$password',no_hp='$hp',username='$username',token='$token' ";
				$result = $this->db->query($sql1) or die(mysqli_connect_errno(). "Failed Registration");
				return $result;
			}else{
				return false;
			}
		}

		// function check login
		public function check_login($emailusername, $passwordLogin){

			$passwordLogin = md5($passwordLogin);
			$login="SELECT $this->_id FROM $this->_table WHERE password='$passwordLogin' AND username='$emailusername' ";

			//checking if the username is available 
			$result = $this->db->query($login);
			//var_dump($login);
			//exit ;
			//if ($result == true ) {
			$user_data = $result->fetch_assoc();
			//}
			//$user_data = $result->fetch_assoc();
			$count_row = $result->num_rows;
				//var_dump($user_data);
			if ($count_row > 0) {
				$_SESSION['login'] = true;
				$_SESSION['id'] = $user_data['id'];
				return true;
			}else{
				return false;
			}

		}

		//take name or all data from user
		public function get_data($id){
			$query="SELECT * FROM $this->_table WHERE $this->_id='$id' ";
			$result = $this->db->query($query);
			//$result=mysqli_query($this->db,$query);
			$user_data=$result->fetch_object();
			//echo $user_data['nama'];
			//var_dump($user_data);
			return $user_data;	
		}
		// session
		public function get_session(){
			return $_SESSION['login'];
		}
		public function user_logout(){
			$_SESSION['login'] = FALSE;
			session_destroy();
		}
		public function get_user_data(){
			$result = $this->db->query("SELECT * FROM $this->_table ");
			while ($show = $result->fetch_array()) {
				echo "<tr>";
				echo "<td>".$show['nama']."</td>";
				echo "<td>".$show['email']."</td>";
				echo "<td>".$show['username']."</td>";
				echo "<td><a href='tel://".$show['no_hp']." '> ".$show['no_hp']."</a></td>";
				echo "<td>".$show['token']."</td>";
				echo '<td><button class="btn bgm-teal btn-icon"><i class="zmdi zmdi-refresh"></i></button></td>';
				echo "</tr>";
			}
		}
		// // Register new mosque
		// public function registerMosque($name,$responsible,$nameOfMosque,$address,$latitude,$longitude,$kota,$id_city,$id){
		// 	$sql = "INSERT INTO $this->_dataMasjid SET $this->_UserID='$id',city='$kota',id_city='$id_city',address='$address',name_of_mosque='$nameOfMosque',lat='$latitude',lng='$longitude' ";
		// 	$kuery = $this->db->query($sql) or die (mysqli_connect_errno(). "failed Enter Data");
		// 	return $kuery;

		// }
		public function select_city(){
			$select = $this->db->query("SELECT * FROM kota");
			while ($show = $select->fetch_array(MYSQLI_ASSOC)) { ?>
				<option value='<?PHP echo $show['lat']; echo "|"; echo $show['lng']; echo "|"; echo $show['kota']; echo "|"; echo $show['detail_kota']; echo "|"; echo $show['id'] ?>'><?PHP echo $show['kota'];?> - (<?PHP echo $show['detail_kota']; ?>)</option>";
	  <?PHP }
		}
		public function check_mosque($id){
			$a = $this->db->query("SELECT * FROM $this->_dataMasjid WHERE $this->_UserID='$id' ");
			$b = $a->num_rows;
			//return $b;
			if ($b !==0) {
				
			}else { ?>
				<div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                    </button>
                    Opps..! You don't have any masjid registered <a href="register.php" class="alert-link">Register Here</a> and try submitting again.
                </div>			
<?PHP		}
			//echo $b;
		}
	}

	/**
	* Muhammad Yana Mulyana
	*/
	class Mosque extends Connection
	{
		//public $db;
		private $_table = 'pengurus_dkm';
		private $_id = 'id';
		private $_dataMasjid = 'data_mosque';
		private $_UserID = 'user_id';
		private $_City = 'kota';
		function __construct(){
			parent::__construct();
		}
			// Register new mosque
		public function registerMosque($name,$responsible,$nameOfMosque,$address,$latitude,$longitude,$city,$id_city,$id){
			$sql = "INSERT INTO $this->_dataMasjid SET $this->_UserID='$id',city='$city',id_city='$id_city',address='$address',name_of_mosque='$nameOfMosque',lat='$latitude',lng='$longitude',manager='$responsible' ";
			$kuery = $this->db->query($sql) or die (mysqli_connect_errno(). "failed Enter Data");
			return $kuery;

		}
		public function registercity($newcity){
			$newcity = preg_replace('/\s+/','+', $newcity);
			$json = file_get_contents("https://maps.google.com/maps/api/geocode/json?address=".$newcity);
			$array = json_decode($json, false);
			return array($array->results[0]->geometry->location->lat, $array->results[0]->geometry->location->lng, $array->results[0]->formatted_address);

		}
		public function checkCity($lati,$kota,$detailkota,$longi)
		{
			$select = $this->db->query("SELECT * FROM kota WHERE lat='$lati' ");
			$chek = $select->fetch_array();
			$get = $chek['lat'];
			if ($lati === $get) {
				echo "<br><br>";
				echo "<div class='alert alert-danger' role='alert'>Opps..!! kota sudah terdaftar.</div>";
			}else{
				$sql = "INSERT INTO kota SET kota='$kota',detail_kota='$detailkota',lat='$lati',lng='$longi' ";
				$query = $this->db->query($sql) or die (mysqli_connect_errno(). "Failed enter newcity");
				if ($query) {
					echo "<div class='alert alert-success' role='alert'>kota berhasil didaftarkan, silahkan kembali ke halaman <a href='register.php'> Register </a>
                            </div> ";
				}
			}
		}
		public function addNewCity($latitude,$lng,$detail_city){
			//$sql1 = "INSERT INTO kota SET  "
		}
		public function dataMosque($id)
		{
			$sql = "SELECT * FROM data_mosque WHERE $this->_UserID='$id' ";
			$fec = $this->db->query($sql);
			$getData = $fec->fetch_object();
			return $getData;
		}

		// update display
		public function updateDisplayNo($id_mosque){
			$select = "UPDATE $this->_dataMasjid SET display='no' WHERE id='$id_mosque' ";
			$sql = $this->db->query($select) or die (mysqli_connect_errno(). "failed update Data");
			return $sql;
		}
		public function updateDisplayYes($id_mosque){
			$select = "UPDATE $this->_dataMasjid SET display='yes' WHERE id='$id_mosque' ";
			$sql = $this->db->query($select) or die (mysqli_connect_errno(). "failed update Data");
			return $sql;
		}
		
		//get khotib jum'at
		public function khotibJumat($nama,$tgl,$id){
			$sql = "UPDATE $this->_dataMasjid SET khotib='$nama',tgl_khotib='$tgl' WHERE $this->_UserID='$id' ";
			$ta = $this->db->query($sql) or die (mysqli_connect_errno(). "failed Enter Data");
			return $ta;
		}
		// get image
		public function getKajian($id_mosque){
			$sql = "SELECT * FROM kajian WHERE id_mosque='$id_mosque' ";
			$get = $this->db->query($sql);
			$row = $get->num_rows;
			if ($row !==0) {
				while ($getData = $get->fetch_object()) { ?>
					 <li>
				        <img src="http://simajid.id/admin/img/kajian/<?PHP echo $getData->nama_1; ?>"> <!-- random image -->
				        <div class="caption left-align">
				          <h3 class="black-text"><?PHP echo $getData->tagline_pertama_1 ?></h3>
				          <h5 class="light black-text text-lighten-3"><?PHP echo $getData->tagline_kedua_1 ?></h5>
				        </div>
				     </li><?PHP
				}
			}else{ ?>
			<br><br><br><br><br><br>
					<h1 class="center">Maap Tidak Ada Jadawal Kajian Untuk Saat Ini</h1>
				<?PHP
			}
			//var_dump($getData);
			//return $getData;
		}
		// check slider or video
		public function checkKajian($id_mosque){
			$sql = $this->db->query("SELECT display FROM $this->_dataMasjid WHERE id='$id_mosque' ");
			$check = $sql->fetch_object();
			return $check;
		}
		// view video as id mosqie
		public function ViewVideo($user_id){
			$select = $this->db->query("SELECT * FROM $this->_dataMasjid WHERE $this->_UserID='$user_id'  ");
			$view = $select->fetch_object();
			return $view;
		}
		
	}

?>

