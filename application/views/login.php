<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

    <?php echo isset($error) ? $error : ''; ?> 
    <div class="container h-vh d-flex justify-content-center align-items-center flex-column">
        <div class="d-flex justify-content-center align-items-center mb-3" >
            <span class=""><!-- SVG Logo -->
                <img src="" alt="Logo">
            </span>
        </div>
        <div class="row w-100 justify-content-center">
            <div class="card w-50 mb-3">
                <div class="card-body">
                    <form method="post" autocomplete="off" id="login-form">
                        <div class="form-group">
                            <label for="username">Username</label>

                            <div class="input-group input-group--inline">
                                <div class="input-group-addon">
                                    <i class="material-icons">account_circle</i>
                                </div>
                                <input type="text" class="form-control" name="user" required id="uname" placeholder="user name">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="d-flex">
                                <label for="username">Password</label>
                                
                            </div>

                            <div class="input-group input-group--inline">
                                <div class="input-group-addon">
                                    <i class="material-icons">lock_outline</i>
                                </div>
                                <input type="password" class="form-control" name="pass" required id="upass"  placeholder="password">
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary" id="btn-login">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer">
            Copyright @ 2017 - <?php echo date('Y');?> - Premiumcontentwriting.com - Admin
        </div>

        
    </div> 
    <script src="<?php echo base_url(); ?>vendor/jquery.min.js"></script>
    <script>
        $(function(){
            $("#login-form").submit(function(event){
                event.preventDefault();
                var url = window.location.protocol + '//' + window.location.host + '/CodeIgniter/';
                var data = $(this).serialize();
                $.ajax({
                    url:'Login/process',
                    type: 'POST',
                    data: data,
                    success:function(response){
                        if(response ==1){
                            $("#btn-login").html('<img src="https://penmypaper.co.uk/panel/Eclipse.gif" /> &nbsp; Signing In ...');
                            setTimeout(' window.location.href = "dashboard"; ',2000);
                        }
                        else{
                            alert(response);
                        }
                    }
                });
            });
        });
    </script>
