<?PHP
    session_start();
    include_once 'model/function.php';
    $user = new User();
?>
<!DOCTYPE html>
<!-- /**
 * Rabu 23 Jan 2016 @lab sisdig
 * Muhammad Yana Mulyana
 */ -->
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Admin Pusat</title>
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">

        <!-- CSS -->
        <link href="css/app_1.css" rel="stylesheet">
        <link href="css/app_2.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/notie.css">
        <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
        
    </head>

    <body>
        <div class="login-content">
            <!-- Login -->
                <div class="lc-block toggled" id="l-login">
                    <div class="lcb-form">
                        <h4 class="center">Sistem Informasi Masjid (SIMAJID)</h4>
                        <small>Login Aplikasi</small><br><br>
                        <?PHP
                            if (isset($_REQUEST['loginform'])) {
                                extract($_REQUEST);
                               // echo $_REQUEST['emailusername'];
                               $login=$user->check_login($emailusername, $passwordLogin);
                               if ($login) {
                                   header("location:index.php");
                               }else{ 
                                 echo '<div id="notif"></div>';
                                 // echo $emailusername;
                                 // echo $passwordLogin;

                                 }
                            }
                            if (isset($_REQUEST['signupform'])) {
                                extract($_REQUEST);
                                $register = $user->reg_dkm($fullname,$email,$token,$hp,$password,$username);
                                if ($register) { ?>
                                     <div id="signupSuccess"></div>
                            <?PHP    }else{ ?>
                                        <div id="signupfailed"></div>
                            <?PHP    }
                            }

                        ?>
                        <form action="<?PHP echo htmlspecialchars($_SERVER["PHP_SELF"]);  ?>" method="POST" >
                            <div class="input-group m-b-20">
                                <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                                <div class="fg-line">
                                    <input type="text" class="form-control usernameMask" name="emailusername" placeholder=" Username" required="required">
                                </div>
                            </div>
                            <div class="input-group m-b-20">
                                <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                                <div class="fg-line">
                                    <input type="password" class="form-control" name="passwordLogin"  placeholder="Password" required="required">
                                </div>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="">
                                    <i class="input-helper"></i>
                                    Keep me signed in
                                </label>
                            </div>
                            <br><br>
                            <button type="submit" name="loginform" class="btn btn-login btn-success btn-float"><i class="zmdi zmdi-arrow-forward"></i></button>
                        </form>
                    </div> <!-- lcb form -->

                   
                </div> <!-- lc block toggled -->
         
            <!-- Register -->
            <div class="lc-block" id="l-register">
                <div class="lcb-form">
                    <?PHP
                         
                    ?>
                    <h4>Sistem Informasi Masjid (SIMAJID)</h4>
                    <h6>Register Akun DKM </h6>
                    <form action="<?PHP echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST" id="validasi">
                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                            <div class="fg-line">
                                <input type="text" class="form-control" name="fullname" placeholder="Full Name" required>
                            </div>
                        </div>

                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                            <div class="fg-line">
                                <input type="email" class="form-control" id="input-masking"  name="email" placeholder="Email Address" required>
                                <input type="hidden" name="token" value="<?PHP echo $token= bin2hex(openssl_random_pseudo_bytes(20)); ?>">
                            </div>
                        </div>
                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                            <div class="fg-line">
                                <input type="text" class="form-control usernameMask" name="username" placeholder="Username" required>
                            </div>
                        </div>
                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="zmdi zmdi-phone"></i></span>
                            <div class="fg-line">
                                <input type="tel" class="form-control input-mask" data-mask="+62-000-0000-0000" name="hp" placeholder="Phone Number " value="+62-" required>
                            </div>
                        </div>

                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="zmdi zmdi-lock"></i></span>
                            <div class="fg-line">
                                <input type="password" class="form-control" name="password" placeholder="Password" id="password" required>
                            </div>
                        </div>
                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="zmdi zmdi-lock"></i></span>
                            <div class="fg-line">
                                <input type="password" class="form-control" name="password_again" placeholder="Repeat Password" id="password_again" required>
                            </div>
                        </div>
                         <button type="submit" name="signupform" class="btn btn-login btn-success btn-float"><i class="zmdi zmdi-arrow-forward"></i></button>
                    </form>
                </div> <!-- lcb form -->

                <div class="lcb-navigation">
                    <a href="" data-ma-action="login-switch" data-ma-block="#l-login"><i class="zmdi zmdi-long-arrow-right"></i> <span>Sign in</span></a>
                   <!--  <a href="" data-ma-action="login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a> -->
                </div>
            </div> <!-- lc block-->

            <!-- Forgot Password -->
            
        </div><!--  login content -->

        <!-- Javascript Libraries -->
        <script type="text/Javascript" src="js/notie.js"></script>
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.inputmask.bundle.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bower_components/jquery-mask-plugin/dist/jquery.mask.min.js"></script>
        <script src="js/app.min.js"></script>
        
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
        <script type="text/javascript">
         
         // jQuery.validator.setDefaults({
         //    debug:true,
         //    success: "valid"
         // });
         // $("#validasi").validate({
         //    rules: {
         //        password: "required",
         //        password_again: {
         //            equalTo: "#password"
         //        }   
         //    }
         // });
                
        $(document).ready(function(){
            if ($('#notif').length !==0 ) {
                  $('#notif').html(notie.alert(3, 'Opps..! Username Or Password Wrong. Check again.'));
            }
            // var not = notie.alert(3, 'Opps..! Email Or Password Wrong. Check again.'); 
            if ($('#signupSuccess').length !==0 ) {
                $('#signupSuccess').html(notie.alert(1, 'Registration success.! login to enter admin panel' ));
            }
            if ($('#signupfailed').length !==0) {
                $('#signupfailed').html(notie.alert(2, 'Opps...! Username or email already registered. try another email or username'));
            }
          //  $('#notif').val('not');
          
           // $("form#formlogin").submit(function(){
           //       //event.preventDefault();
           //       // return falase for canceling submit
           //      //return false;
           //      $('#notif').html(notie.alert(3, 'Opps..! Email Or Password Wrong. Check again.'));
           // });
            $(".usernameMask").inputmask('Regex', {
                regex : "[a-zA-Z0-9._%-]+@[a-zA-Z0-9-]+\\.[a-zA-Z]{2,4}"
            });
          //  inputmask("email").mask('#usernameMask');
        });
        </script>
    </body>
</html>
