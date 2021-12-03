<!-- #include virtual="coverscart/top.asp" -->

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Contact || Asbab - eCommerce HTML5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Owl Carousel min css -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="css/custom.css">


    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/4.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner">
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.asp">Home</a>
                                  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                                  <span class="breadcrumb-item active">Login</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Contact Area -->
        <section class="htc__contact__area ptb--100 bg__white">
            <div class="container">
                <div class="row">
					<div class="col-md-6">
						<div class="contact-form-wrap mt--60">
							<div class="col-xs-12">
								<div class="contact-title">
									<h2 class="title__line--6">Login</h2>
								</div>
							</div>
							<div class="col-xs-12">
								<form id="contact-form" action="loginvalidation.asp" method="post">
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="email" name="loginemail" placeholder="Your Email*" style="width:100%" required>
										</div>
									</div>
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="password" name="loginpassword" placeholder="Your Password*" 
                                            id="password-field1" style="width:100%" required>
                                            <span>
                                            <i class="fas fa-eye" style="position:absolute; right:40px; top:46%;"
                                            onclick="show_password_toggle1()"></i>
                                            </span>
										</div>
									</div>
									
									<div class="contact-btn">
										<button type="submit" class="fv-btn">Login</button>
									</div>
								</form>
								<div class="form-output">
									<p class="form-messege"></p>
								</div>
							</div>
						</div> 
                
				</div>
				

					<div class="col-md-6">
						<div class="contact-form-wrap mt--60">
							<div class="col-xs-12">
								<div class="contact-title">
									<h2 class="title__line--6">Register</h2>
								</div>
							</div>
							<div class="col-xs-12">
								<form id="contact-form" action="registervalidation.asp" method="post">
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="text" name="registername" placeholder="Your Name*" style="width:100%" required>
										</div>
									</div>
                                    <div class="single-contact-form">
										<div class="contact-box name">
											<input type="textarea" name="registeraddress" placeholder="Your Address*" style="width:100%" required>
										</div>
									</div>
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="text" name="registermobile" placeholder="Your Mobile*" style="width:100%" required>
										</div>
									</div>
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="email" name="registeremail" placeholder="Your Email*" style="width:100%" required>
										</div>
									</div>
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="password" name="registerpassword" placeholder="Your Password*" 
                                            id="password-field2" style="width:100%" required>
                                            <span>
                                            <i class="fas fa-eye" style="position:absolute; right:40px; bottom:213px;"
                                            onclick="show_password_toggle2()"></i>
                                            </span>
										</div>
									</div>
                                    <div class="single-contact-form">
										<div class="contact-box name">
											<input type="password" name="registerrepassword" placeholder="Re-Enter Your Password*" 
                                            id="password-field3" style="width:100%" required>
                                            <span>
                                            <i class="fas fa-eye" style="position:absolute; right:40px; bottom:122px"
                                            onclick="show_password_toggle3()"></i>
                                            </span>
                                        </div>
									</div>
									
									<div class="contact-btn">
										<button type="submit" class="fv-btn">Register</button>
									</div>
								</form>
								<div class="form-output">
									<p class="form-messege"></p>
								</div>
							</div>
						</div> 
                
				</div>
					
            </div>
        </section>
    <script src="https://kit.fontawesome.com/f1e397c55b.js" crossorigin="anonymous"></script>
    <!-- Show password toggle method -->
    <script>
        var state1 = false;
        var state2 = false;
        var state3 = false;

            function show_password_toggle1() {
                if (state1) {
                    document.getElementById("password-field1").setAttribute("type", "password");
                    state1 = false;
                } else {
                    document.getElementById("password-field1").setAttribute("type", "text");
                    state1 = true;
                }    
            }

            function show_password_toggle2() {
                if (state2) {
                    document.getElementById("password-field2").setAttribute("type", "password");
                    state2 = false;
                } else {
                    document.getElementById("password-field2").setAttribute("type", "text");
                    state2 = true;
                }    
            }

            function show_password_toggle3() {
                if (state3) {
                    document.getElementById("password-field3").setAttribute("type", "password");
                    state3 = false;
                } else {
                    document.getElementById("password-field3").setAttribute("type", "text");
                    state3 = true;
                }
            }
    </script>
</body>
</html>

<!-- #include virtual="coverscart/footer.asp" -->