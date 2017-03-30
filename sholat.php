<?PHP
    session_start();
    include_once '../model/user_dkm.php';
    $admin = new Admin();
    $user = new User();
    $id=$_SESSION['id_admin'];
    if (!$admin->get_session_admin()) {
        header("location:login.php");
    }if (isset($_GET['log'])) {
        $admin->admin_logout();
        header("location:login.php");
    }
?>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="google-site-verification" content="J6h8e9j0ysV9G6eud-so4hkC819xRYMHPHHEmXtDaAc" />
        <meta name="google-site-verification" content="J6h8e9j0ysV9G6eud-so4hkC819xRYMHPHHEmXtDaAc" />
        <link rel="icon" type="image/png" href="http://app.simajid.id/img/logo-simajid.png"> 
        <meta name="description" content="Sistem Informasi Masjid Berbasis Android Dan TV LED (SIMAJID) SIMAJID merupakan aplikasi untuk menampilkan jadwal sholat, kajian, jadawal imam dan khotib, video kajian, dan informasi masjid lainya."/>
        <link rel="publisher" href="https://plus.google.com/u/0/+MuhammadYanaMulyana" />
        <meta name="keywords" content="muhammad yana mulyana,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LED,Sistem Informasi Masjid,SIMAS,SIMAJID, SISTEM INFORMASI MASJID, Sistem Informasi Masjid Berbasis Android dan TV LEDyana,muhammad,yana mulyana,unikom, Simajid, Sistem Informasi Masjid, SIMAS, Sistem Informasi Masjid Berbasis Android dan TV LED, SIMAJID, SIMAS JABAR, SISTEM INFORMASI MASJID, UNIKOM, Tugas Akhir, Sistem Informasi Masjid,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu,jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu ,tophostingid,tophostingid,Top Hosting ID,Top Hosting ID,ditec,ditec,ditec, jadwal sholat, jadwal sholat lima waktu, jadwal solat, jadwal solat lima waktu"/>
        <title>Admin Panel Simajid App</title>

        <!-- Vendor CSS -->
      
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
      
         <link href="../vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link href="../vendors/bower_components/datatables.net-dt/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
        <link href="../vendors/bower_components/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
        <link href="../vendors/farbtastic/farbtastic.css" rel="stylesheet">
        <link href="../vendors/bower_components/chosen/chosen.css" rel="stylesheet">
        <link href="../vendors/summernote/dist/summernote.css" rel="stylesheet">
        <link href="../vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
        <script src="../vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
        <!-- CSS -->
        <link href="../css/app_1.css" rel="stylesheet">
        <link href="../css/app_2.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <style type="text/css" media="screen">
            .caption {font-size: 20px; color: #d95722; text-align: center; width: 10em;}
            .arrow {font-weight: bold; text-decoration: none; color: #3D3D3D; }
            .arrow:hover {text-decoration: underline;}
            .command {font-weight: bold; text-decoration: none; color: #AAAAAA; }
            .command:hover {text-decoration: underline;}
            .timetable {border-width: 1px; border-style: outset; border-collapse: collapse; border-color: gray; margin: 0 auto;}
            .timetable td {border-width: 1px; border-spacing: 1px; padding: 1px; border-style: inset; border-color: #CCCCCC;}
            .head-row {color: black; background-color: #eef;}
            .today-row {background-color: #ff0000 !important; color: white}
            .table2{
                width: 1%;
                max-width: 1%;
                margin-bottom: 1px;
            }
            .table > tbody + tbody {
              border-top: 1px solid #F5F5F5;
            }
            .table2 > thead > tr > th,
            .table2 > tbody > tr > th,
            .table2 > tfoot > tr > th,
            .table2 > thead > tr > td,
            .table2 > tbody > tr > td,
            .table2 > tfoot > tr > td {
              padding: 15px;
              line-height: 1.42857143;
              vertical-align: top;
              border-top: 1px solid #F5F5F5;
            }

            .table2 > thead > tr > th {
              vertical-align: bottom;
              border-bottom: 2px solid #F5F5F5;
            }

            .table2 > caption + thead > tr:first-child > th,
            .table2 > colgroup + thead > tr:first-child > th,
            .table2 > thead:first-child > tr:first-child > th,
            .table2 > caption + thead > tr:first-child > td,
            .table2 > colgroup + thead > tr:first-child > td,
            .table2 > thead:first-child > tr:first-child > td {
              border-top: 0;
            }

            .table2 > tbody + tbody {
              border-top: 2px solid #F5F5F5;
            }

            .table2 .table2 {
              background-color: #f3f3f3;
            }
            .table2 > thead > tr > td.active,
            .table2 > tbody > tr > td.active,
            .table2 > tfoot > tr > td.active,
            .table2 > thead > tr > th.active,
            .table2 > tbody > tr > th.active,
            .table2 > tfoot > tr > th.active,
            .table2 > thead > tr.active > td,
            .table2 > tbody > tr.active > td,
            .table2 > tfoot > tr.active > td,
            .table2 > thead > tr.active > th,
            .table2 > tbody > tr.active > th,
            .table2 > tfoot > tr.active > th {
              background-color: #FFFCBE;
            }
            #output{
            font-size:100px;
            font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align:center;
            color:#666;
           
        }
        </style>
        <!-- javascript library -->
 
    <script type="text/javascript" src="../js/PrayTimes.js"></script>

    </head>
    <body>
       <?PHP include "header.php"; ?>
        <section id="main">
           <?PHP include"menu.php" ?>
            <!-- chat disini -->
            <!-- isi chat -->
            <!-- ISI DASHBOARD -->
            <section id="content">
                <div class="container">
                   <?PHP
                    $masjid = new Mosque(); 
                        //$masjid->select_city(); 
                    ?>
                    <div class="card">
                        <div class="card-header">
                            <h2>Jadwal Shola LIma waktu Perbulan</h2>
                        </div>
                        <div class="card-body card-padding">
                            <div class="container">
                                <div class="row">
                                    
                                </div>
                                <form class="form" method="get" action="javascript:update();">
                                    <div class="col-sm-3 m-b-25">
                                        <p class="f-500 m-b-15 c-black">Silahkan Pilih Kota</p> 
                                        <select class="selectpicker" id="kota" name="city" onchange="pilih(this)" data-live-search="true" required>
                                            <?PHP $masjid->select_city(); ?>
                                        </select>
                                    </div>
                                    <div class="col-sm-3">
                                        <p class="f-500 m-b-15 c-black">Latitude</p>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="zmdi zmdi-pin"></i></span>
                                            <div class="fg-line">
                                                <input type="text" name="latitude" class="form-control" value="-6.9174639" onchange="update();" placeholder="latitude" id="latitude" required> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <p class="f-500 m-b-15 c-black">Longitude</p>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="zmdi zmdi-pin-drop"></i></span>
                                            <div class="fg-line">
                                                <input type="text" name="longitude" class="form-control" value="107.6191228" onchange="update();"  placeholder="latitude" id="longitude" required>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <p id="tampil"></p> -->
                                    <div class="col-sm-3">
                                        <p class="f-500 m-b-15 c-black">Metode Kalkulasi</p>
                                        <div class="input-group">
                                            <select class="selectpicker" id="method" size="1" style="font-size: 12px;" onchange="update()" data-live-search="true">
                                                <option value="Karachi" selected="selected">Sihat / Kemenag (kementrian Agama)</option>
                                                <option value="MWL" >Muslim World League (MWL)</option>
                                                <option value="ISNA">Islamic Society of North America (ISNA)</option>
                                                <option value="Egypt">Egyptian General Authority of Survey</option>
                                                <option value="Makkah">Umm al-Qura University, Makkah</option>
                                                
                                                <option value="Jafari">Shia Ithna-Ashari (Jafari)</option>
                                                <option value="Tehran">Institute of Geophysics, University of Tehran</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="" style="display:none">
                                       
                                            <select class="selectpicker" id="dst" size="1" style="font-size: 12px;" onchange="update()" data-live-search="true">
                                                <option value="auto" selected="selected">Auto</option>
                                                <option value="0">0</option>
                                                <option value="1">1</option>
                                            </select>
                                        
                                    </div>
                                     <input type="hidden" value="7" id="timezone" size="2" onchange="update();" />&nbsp;
                                </form>
                                </div>
                                <br/>
                                <h3 class="text-center">Simajid App - Jadwal Solat lima waktu Kota Bandung bulan <?PHP echo date('m-Y'); ?> </h3>
                                <table align="center">
                                <tr>
                                    <td><a href="javascript:displayMonth(-1)" class="arrow">Bulan sebelumnya</a></td>
                                    <td id="table-title" class="caption" ></td>
                                    <td><a href="javascript:displayMonth(+1)" class="arrow">Bulan selanjutnya</a></td>
                                </tr>
                                </table>
                                <br/>
                                <div class="table-responsive">
                                    <table id="timetable" class="table2 table-striped timetable">
                                        <tbody></tbody>
                                    </table>
                                </div>
                                <div align="center" style="margin-top: 7px">
                                    Sumber di ambil dari: <a href="http://praytimes.org/" class="command">PrayTimes.org</a> |
                                    Format Waktu: <a id="time-format" href="javascript:switchFormat(1)" title="Change clock format" class="command"></a>
                                </div>
                                <br/>


                            </div> <!-- cintainer -->
                        </div> <!-- card body -->
                    </div> <!-- card -->
                </div>  <!-- container-->
            </section> <!-- section content -->
        </section> <!-- section main -->

        <?PHP include "../view/footer.php"; ?>

        <!-- Page Loader -->
        <!-- <div class="page-loader">
            <div class="preloader pls-blue">
                <svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

                <p>Please wait...</p>
            </div>
        </div> -->

        <!-- Javascript Libraries -->
        <script src="../vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

          <script src="../vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="../vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="../vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="../vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="../vendors/bower_components/chosen/chosen.jquery.js"></script>
        <script src="../vendors/bower_components/dropzone/dist/min/dropzone.min.js"></script>
        <script src="../vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>

      
        <script src="../js/app.js"></script>
        <script type="text/javascript">
         console.log($('body'));
            function pilih(el) { 
                 var a = el.value; 
                 var lating=a.split('|'); 
                 var lati=lating[0]; 
                 var longi=lating[1]; 
                 var latinput=document.getElementById('latitude'); 
                 latinput.value=lati; 
                 var lnginput=document.getElementById('longitude'); 
                 lnginput.value=longi; 
                 
                update();
            }


            function startTime(){
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('txt').innerHTML = h + ":" + m +":" + s;
                var t = setTimeout(startTime, 500);
            }
            function checkTime(i){
                if (i < 10) {i = "0" + i};
                return i;
            }

            var currentDate = new Date();
            var timeFormat = 1; 
            switchFormat(0);

            // display monthly timetable
            function displayMonth(offset) {
                var lat = $('latitude').value;
                var lng = $('longitude').value;
                var timeZone = $('timezone').value;
                var dst = $('dst').value;
                var method = $('method').value;
                

                prayTimes.setMethod(method);
                currentDate.setMonth(currentDate.getMonth()+ 1* offset);
                var month = currentDate.getMonth();
                var year = currentDate.getFullYear();
                var title = monthFullName(month)+ ' '+ year;
                $('table-title').innerHTML = title;
                makeTable(year, month, lat, lng, timeZone, dst);
            }

            // make monthly timetable
            function makeTable(year, month, lat, lng, timeZone, dst) {      
                var items = {day: 'Tgl',imsak: 'Imsak', fajr: 'Subuh', sunrise: 'fajar', 
                            dhuhr: 'Dzuhur', asr: 'Ashar', 
                            maghrib: 'Maghrib', isha: 'Isha'};
                        
                var tbody = document.createElement('tbody');
                tbody.appendChild(makeTableRow(items, items, 'head-row'));

                var date = new Date(year, month, 1);
                var endDate = new Date(year, month+ 1, 1);
                var format = timeFormat ? '24h' : '12hNS';

                while (date < endDate) {
                    var times = prayTimes.getTimes(date, [lat, lng], timeZone, dst, format);
                    times.day = date.getDate();
                    var today = new Date(); 
                    var isToday = (date.getMonth() == today.getMonth()) && (date.getDate() == today.getDate());
                    var klass = isToday ? 'today-row' : '';
                    tbody.appendChild(makeTableRow(times, items, klass));
                    date.setDate(date.getDate()+ 1);  // next day
                }
                removeAllChild($('timetable'));
                $('timetable').appendChild(tbody);
            }

            // make a table row
            function makeTableRow(data, items, klass) {
                var row = document.createElement('tr');
                for (var i in items) {
                    var cell = document.createElement('td');
                    cell.innerHTML = data[i];
                    cell.style.width = i=='day' ? '2.5em' : '3.7em';
                    row.appendChild(cell);
                }
                row.className = klass;
                return row;     
            }

            // remove all children of a node
            function removeAllChild(node) {
                if (node == undefined || node == null)
                    return;

                while (node.firstChild)
                    node.removeChild(node.firstChild);
            }

            // switch time format
            function switchFormat(offset) {
                var formats = ['24-jam', '12-hour'];
                timeFormat = (timeFormat+ offset)% 2;
                $('time-format').innerHTML = formats[timeFormat];
                update();
            }

            // update table
            function update() {
                displayMonth(0);
            }

            // return month full name
            function monthFullName(month) {
                var monthName = new Array('January', 'February', 'March', 'April', 'May', 'June', 
                                'July', 'August', 'September', 'October', 'November', 'December');
                return monthName[month];
            }

            function $(id) {
                return document.getElementById(id);
            }
        </script>
    </body>
  </html>
