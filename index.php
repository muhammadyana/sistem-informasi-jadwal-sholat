<?PHP
    session_start();
    include_once 'model/function.php';
    $user = new User();
    $masjid = new Mosque();
    $id=$_SESSION['id'];
    if (!$user->get_session()) {
        header("location:login.php");
    }if (isset($_GET['q'])) {
        $user->user_logout();
        header("location:login.php");
    }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Simajid Siistem Informasi Masjid </title>
	<!-- Author : Muhammad Yana Mulyana -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="google-site-verification" content="J6h8e9j0ysV9G6eud-so4hkC819xRYMHPHHEmXtDaAc" />
	<link rel="icon" type="image/png" href="http://app.simajid.id/img/logo-simajid.png">
    <meta name="description" content="Sistem Informasi Masjid Berbasis Android Dan TV LED (SIMAJID) SIMAJID merupakan aplikasi untuk menampilkan jadwal sholat, kajian, jadawal imam dan khotib, video kajian, dan informasi masjid lainya."/>
    <link rel="publisher" href="https://plus.google.com/u/0/+MuhammadYanaMulyana" />
    <meta name="keywords" content="muhammad yana mulyana,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LEDyana,muhammad,yana mulyana,unikom, Simajid, Sistem Informasi Masjid, SIMAS, Sistem Informasi Masjid Berbasis Android dan TV LED, SIMAJID, SIMAS JABAR, SISTEM INFORMASI MASJID, UNIKOM, Tugas Akhir, Sistem Informasi Masjid,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu ,tophostingid,tophostingid,Top Hosting ID,Top Hosting ID,ditec,ditec,ditec, jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="compiled/flipclock.css">
	<link rel="stylesheet" type="text/css" href="css/custom.css" />
	<link rel="stylesheet" type="text/css" href="css/materialize.css" />
	<!-- <link rel="stylesheet" href="css/hopscotch.css"></link> -->
	<link rel="stylesheet" type="text/css" href="css/jam.css" />
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"/>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
	<script src="js/sweetalert-dev.js"></script>
  	<link rel="stylesheet" href="css/sweetalert.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<!-- <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'> -->

	  <style type="text/css">
  /*ini kenapa css harus disini  ga bisa di luar file ini :( lieur
   * yasudahlah disini dulu aja. mungkin dia kangen ga mau misah.
   */
  body {
  /*overflow: hidden;*/
}


/* Preloader */
#iqomah{
	/*zoom :0.7;*/
	display: inline-block;
	width: auto;
}
#preloader {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #fff;
  /* change if the mask should have another color then white */
  z-index: 99;
  /* makes sure it stays on top */
}

#status {
  width: 200px;
  height: 200px;
  position: absolute;
  left: 50%;
  /* centers the loading animation horizontally one the screen */
  top: 50%;
  /* centers the loading animation vertically one the screen */
  /*background-image: url(https://d13yacurqjgara.cloudfront.net/users/216925/screenshots/2044807/bolt.gif);*/
  /* path to your loading animation */
  background-repeat: no-repeat;
  background-position: center;
  margin: -100px 0 0 -100px;
  /* is width and height divided by two */
}


  </style>
</head>
<?PHP
	$dataMosque = $masjid->dataMosque($id);
	$id_mosque = $dataMosque->id;
 ?>
<body>
 <!-- Preloader -->
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
	<div class="section light-green z-depth-1">
		<div class="row" style="margin-bottom:-15px">
			<!--  <div class="container"> -->
			<div class="col l1 s12 m12">
				<img src="http://simajid.id/app/img/logo-unikom.png" height="100" style="margin-left:25px;" alt="">
			</div>
			<div class="col l6 s12 m12 center">
				<h4 class="center"><?PHP echo $dataMosque->name_of_mosque;  ?></h4>
				<address class="center">
				 <?PHP echo $dataMosque->address; ?>
				</address>
			</div>
		<!-- </div>  --><!-- container -->
			<div class="col l5 s12 m12">

				<div class="tengah">
					<p id="clock"></p>
				</div>
			</div>
		</div> <!-- row -->
	</div><!-- section -->
	<!-- <div class="divider"></div>
	<div style="height:10px;"></div> -->
	<!-- <section class="light-green darken-1">
		 <div class="container center">

		 </div>
	</section> -->
	<section>
	<!--  <h5 class="center">Jadwal Sholat Untuk daerah <b><?PHP echo ucwords($dataMosque->city); ?> </b> Fajr : 20 Isya : 18 </h5> -->
		<div class="row " style="margin-bottom:0px !important;">
			<div class="light-green lighten-2 col l2 m6 s12 center">
				<h5 style="center middle"><b>Subuh</b></h5>
			<div align="center" class="subuh "></div>
			<?PHP  //include "jamd.php" ?>

			</div>
			<div class="light-green lighten-1 col l2 m6 s12 center">
				<h5 style="center middle"><b>Fajar</b></h5>
				<div align="center" class="fajar"></div>
			</div>
			<div class="light-green darken-1 col l2 m6 s12 center">
				<h5 style="center middle"><b>Dzuhur</b></h5>
				<div align="center" class="dzuhur"></div>
			</div>
			<div id="s" class="light-green darken-2 col l2 m6 s12 center">
				<h5 style="center middle"><b>Ashar</b></h5>
				<div  align="center" class="ashar"></div>
			</div>
			<div class="light-green darken-3 col l2 m6 s12 center">
				<h5 style="center middle"><b>Magrib</b></h5>
				<div align="center" class="magrib"></div>
			</div>
			 <div class="light-green darken-4 col l2 m6 s12 center">
				<h5 style="center middle"><b>Isya</b></h5>
			    <div align="center" class="isya"></div>
			</div>
		</div>
	</section>
	<section class="light-green">
		 <marquee scrolldelay="200">
		 	<p style="font-size: 20px;">
		 		<b style="color:white;">Imam Jum'at <?PHP echo $dataMosque->tgl_khotib; ?> : <?PHP echo $dataMosque->khotib; ?> - Khotib : Ust <?PHP echo $dataMosque->khotib; ?></b>
		 	</p>
		 </marquee>
	</section>

		 <div class="section light-green lighten-3 ">

			 <!--  <h4 class="center">Dzuhur Pukul : 11.33</h4> -->
				<div class="row">
					 <div class="col l5 m12 s12  ">

					 	<p class="center tanggal " style="font-size:15px;"></p>
					 	<h6 class="center"><b>Jeda Waktu Sholat Selanjutnya </b></h6>
					 	 	<div class="center">
								<div id="itung"></div>
							</div>
					 	<h6 class="center"><b>Hitung Mundur Ke Waktu Iqomah</b></h6>
						<div class="center">
					 		<div id="iqomah"></div>
				 		</div>
					 	<div class="center">
					 		<button id="btnstart" class="amber darken-1 mulai waves-effect waves-light btn-large" style=" font-size: 16px;"><i class="material-icons left">alarm_on</i>Iqomah</button>
							<button id="btnreset"  class="teal reset mulai waves-effect waves-light btn-large" style=" font-size: 16px;"><i class="material-icons left">restore</i>RESET</button>
						</div>
					 </div>
						<div class="col l7 m12 s12 ">
							<!-- <h5 class="center">Kajian-Kajian Minggu ini</h5> -->
							<?PHP
								$user_id = $dataMosque->user_id;
								//echo $id;
								// view video as user id
								$video = $masjid->ViewVideo($user_id);
								$checkKajian = $masjid->checkKajian($id_mosque);
								$ricek = $checkKajian->display;
								if ($ricek == 'yes') { ?>
									 <video class="responsive-video videokajian" width="800" controls autoplay loop>
									    <source src="http://simajid.id/admin/video/<?PHP echo $video->video; ?>" type="video/mp4">
									  </video> <?PHP
								}elseif($ricek == 'no') { ?>
									<div id="kajian">
										<div class="slider">
										    <ul class="slides">
												<?PHP $data2 = $masjid->getKajian($id_mosque); ?>
										    </ul>
										  </div>
									</div> <!-- div kajian --> <?PHP
								}
							?>

						</div>
					</div> <!-- div class colom -->
					<?PHP
						$id_mosque = $dataMosque->id;
					?>

				<!-- </div> row atas -->
			</div>

 <!--  <div class="parallax-container">
		<div class="parallax"><img src="http://materializecss.com/images/parallax2.jpg"></div>
	</div> -->
 <!-- Audio-audio -->
 	<!-- audio iqomah -->
	 <audio class="audioIqomah" src="alarm.mp3" preload="none">

	 </audio>
	 <!-- audio  reminder one hour -->
	 <audio class="audioSatujam" preload="none">
		 <source src="1jam.mp3" type="audio/mp3">
		 Your browser does not support the audio element.
	 </audio>
	 <!-- audio 30 minut -->
	 <audio class="audioTigaPuluh" preload="none">
		 <source src="30.mp3" type="audio/mp3">
		 Your browser does not support the audio element.
	 </audio>
	 <!-- audio 10 menit -->
	 <audio class="audioSepuluh" preload="none">
		 <source src="10.mp3" type="audio/mp3">
		 Your browser does not support the audio element.
	 </audio>
	 <!-- audio 5 minute -->
	 <audio class="audioLima" preload="none">
		 <source src="5menit.mp3" type="audio/mp3">
		 Your browser does not support the audio element.
	 </audio>
	 <!-- audio 1 minut -->
	 <audio class="audioSatuMenit" preload="none">
		 <source src="1.mp3" type="audio/mp3">
		 Your browser does not support the audio element.
	 </audio>
	 <!-- audio adzan -->
	 <audio class="audioAdzan" preload="none">
		 <source src="adzan.mp3" type="audio/mp3">
		 Your browser does not support the audio element.
	 </audio>
<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="compiled/flipclock.js"></script>
<script type="text/javascript" src="PrayTimes.js"></script>

<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/myscript.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<script type="text/javascript" src="js/picker.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript">
$(window).on('load', function() { // makes sure the whole site is loaded
  $('#status').fadeOut(); // will first fade out the loading animation
  $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
  $('body').delay(350).css({'overflow':'visible'});
})
	// display date in indonesia
	// 02/02/2017
	// raod to sidang..!
	var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
	var myDays = ['Minggu','Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum&#39;at', 'Sabtu'];
	var date = new Date();
	var day = date.getDate();
	var month = date.getMonth();
		month = months[month];
	var thisDay = date.getDay();
		thisDay = myDays[thisDay];
	var yy = date.getYear();
	var year = (yy < 1000) ? yy + 1900 : yy;
	//console.log(month);
	$('.tanggal').html(thisDay +',' + ' ' + day + ' ' + month + ' ' + year);

	var strToMoment = function(str){
		// mengubah string ke moment object hari ini
		// javascript memang pusing. but its beutiful
		// misal: 18:00 => akan diubah ke moment berdasarkan hari sekarang jam 18:00
		// HH => jam 00 - 24
		// mm => 00 - 59
		return moment(str, 'HH:mm');
	};
	// var tes = strToMoment();
	// console.log(tes);
	var getJadwal = function(when){
		prayTimes.setMethod('Karachi');
		// mendapatkan moment object pada hari ini
		var toDay = moment();
		if (when == 'tomorrow') {
			// jika besok maka tambah satu hari
			date = toDay.add('1', 'days');
		} else {
			// hari ini
			date = toDay;
		}
		// date.toDate() = convert ke javascript Date()
		// var lat = -6.9174639;
		// tes pake php bisa apa engga
		// klo ga bisa teing kumaha
		// var lon = '<?PHP echo "107.20" ?>';
		// var lat = -6.913089;
		// var lon = 107.609007;
		var lat = <?PHP echo $dataMosque->lat; ?>;
		var lon = <?PHP echo $dataMosque->lng; ?>;
		//console.log(lon);
		return prayTimes.getTimes(date.toDate(), [lat, lon], +7);
	};
	//console.log(getJadwal);

	/**
	 * getUpcomingSchedule
	 * @return momentObject waktu sholat selanjutnya
	 */
	var getUpcomingSchedule = function(){
		var result = null;
		// looping berdasarkan jadwal hari ini
		// tergantung urutan di json dari praytime
		// baru engeh di praytime ada midnight. pantes dari isya ke subuh jedahnya cuma 4 jam
		// ga taunya itu midnight bukan subuh.
		// 2 hari nyari ginian baru ketemu. you make me........!
		// harus di delete lagi json objectnya :(
		// untung ada di google
			// karena urutan dari subuh ke isya jadi gk perlu reorder lagi
			var jedah = getJadwal(); // data json jadwal sholat
			var hapus ="midnight"; //cari yg mau dihapus
			//console.log(jedah);
			delete jedah[hapus]; //hapus midnight biar langsung ke subuh
			// console.log(jedah);

		$.each(jedah,function(key, val) {
			momentVal = strToMoment(val);
			// jika jam sholat belum lewat jam sekarang
		// jadwal dari praytime dibandingin sama jam sekarang lebih dari nol brrti itu jadwal sepanjutnya
			if (momentVal.diff(moment()) > 0) {
				result = strToMoment(val);
				//console.log(result);
				return false;
			}
		});
		//console.log(getUpcomingSchedule);

		// jika hari ini sudah melewati sholat isya
		if (result === null) {
			result = strToMoment(getJadwal('tomorrow').fajr).add(1, 'days');
		}
		return result;
	};

	/**
	 * 30 Oktober 2016
	 * Ta belum beres2. hayang gera lulus
	 * Muhammad Yana Mulyana
	 * @param  momentObject end   waktu tujuan
	 * @return int                jarak waktu
	 */
	var duration = function(end){
		var start  = moment();
		// mencari jarak berupa detik
		//jam tujuan dikurangi dengan jam sekarang dengan moment diff dalam bentuk detik
		//console.log(start); //lihat waktu sekarang dari moment.
		return end.diff(start, 'seconds');

	};
	// console.log(duration);
	$(document).ready(function() {
		// mendapatkan jadwal sekarang
		var jadwalSekarang = getJadwal();
    console.log(jadwalSekarang);
		$('#clock').FlipClock({
			clockFace: 'TwentyFourHourClock'
		});


		//hitung muncdur waktu iqomah
		var iqomah = $('#iqomah').FlipClock(<?PHP echo $dataMosque->iqomah ?>, {
			clockFace: 'MinuteCounter',
			countdown: true,
			autoStart: false,
			callbacks:{
				interval:function(){
					console.log(iqomah.getTime().time);
					if (iqomah.getTime().time == 0) {
						$(".audioIqomah").trigger('load');
						$(".audioIqomah").trigger('play');
					}
				}

			}
		});
		$('.mulai').click(function() {
			iqomah.start();
		});
		// ketika countdown udah 0
		$('.reset').click(function() {
			// untuk mereset object flipclock
			//iqomah.stop();
			iqomah.setTime(<?PHP echo $dataMosque->iqomah ?>);
			iqomah.stop();
			//iqomah.start();
		});

		// mendapatkan durasi berupa detik
		var upcoming = getUpcomingSchedule();
		//console.log(duration(upcoming)); //liat jeda waktu ke waktu sholat selanjutnya dalam bentuk detik
		//var tauah = duration(upcoming);
		//var kurang = duration(upcoming) - 120;
		//console.log(kurang);

		var theCounter = $('#itung').FlipClock(duration(upcoming), {
			clockFace: 'HourCounter',
			countdown: true,
			autoStart: false,
			//console.log(theCounter)
			callbacks: {
				interval:function(){
					// mendapatkan jeda waktu ke sholat selanjutnya
					//console.log(theCounter.getTime().time);
					/* var time = theCounter.getTime().time;
					 * console.log(time);
					 * Minggu 17:20 @ Lab sisdig nyari selang sekian menit di flipclockjs.
					 * jika waktu solat selanjutnya 1 jam lagi maka beri reminder
					 */
					//console.log(duration(upcoming));
					if ( theCounter.getTime().time == 3600 ) {
						$(".audioSatujam").trigger('load');
						$(".audioSatujam").trigger('play');
					}
					// jika waktu solat selanjutnya 30 menit lagi. maka beri reminder
					if (theCounter.getTime().time == 1800) {
						$(".audioTigaPuluh").trigger('load');
						$(".audioTigaPuluh").trigger('play');
					}
					// jika wakto solat sleanjutnya 10 menit lagi, maka beri reminder
					if (theCounter.getTime().time == 600) {
						$(".audioSepuluh").trigger('load');
						$(".audioSepuluh").trigger('play');
					}
					<?PHP $itung = 5*60; ?>
					if (theCounter.getTime().time == <?PHP echo $dataMosque->jeda_before; ?>){
						$(".videokajian").trigger('pause');
					}
					// jika wakto solat sleanjutnya lima menit lagi, maka beri reminder
					if ( theCounter.getTime().time == 300) {
						$(".audioLima").trigger('load');
						$(".audioLima").trigger('play');
						//$(".videokajian").trigger('pause');
						// 5 minute before adzan change video to slider


					}
					// jika wakto solat sleanjutnya 3 menit lagi, maka beri reminder
					// if ( theCounter.getTime().time == 180) {
					// 	$(".audioTiga").trigger('load');
					// 	$(".audioTiga").trigger('play');
					// }
					// jika wakto solat sleanjutnya 1 menit lagi, maka beri reminder
					if ( theCounter.getTime().time == 60) {
						//swal("Good job!", "Selamat Menggunakan Aplikasi Kami :) ", "success");
						$(".audioSatuMenit").trigger('load');
						$(".audioSatuMenit").trigger('play');
					}

				},
				stop: function(){
					// jalankan counter dengan jarak
					// ke waktu sholat selanjutnya
					// var AdzanAudio = new Audio('adzan.mp3');
					// AdzanAudio.play();
					$(".videokajian").trigger('pause');
					$(".audioAdzan").trigger('load');
					$(".audioAdzan").trigger('play');
					// ketika sudah lewat 10 menit dari waktu solat beri reminder
					setTimeout(function() {
						// var afterTenMinutue = new Audio('after2.mp3');
						// afterTenMinutue.play();
						// naha sih kudu ka ms
						//1 detik = 1000 milisecond
						// 1 menit = 60000 ms
						//10 menit = 600000 ms
						// 20 menit 1200000
						//reminder pertama
						upcoming = getUpcomingSchedule();
						theCounter.setTime(duration(upcoming));
						theCounter.start();
						},<?PHP echo "10000"; ?>);
					setTimeout(function() {
						var afterTwentyMinute = new Audio('after20.mp3');
						afterTwentyMinute.play();
						$(".videokajian").trigger('play');

						//20 minute after adzan change slider to video kajian
						//reminder lagi. gera solat woy
					},<?PHP echo $dataMosque->jeda_after; ?>);
				}
			}
		});
		theCounter.start();
		// jadwal waktu sholat
		$('.subuh').html(jadwalSekarang.fajr);
		$('.fajar').html(jadwalSekarang.sunrise);
		$('.dzuhur').html(jadwalSekarang.dhuhr);
		$('.ashar').html(jadwalSekarang.asr);
		$('.magrib').html(jadwalSekarang.maghrib);
		$('.isya').html(jadwalSekarang.isha);
	});
</script>
</body>
</html>
