<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Covers Cart</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/icon" href="/coverscart/images/favicon.png">
    

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="/coverscart/css/bootstrap.min.css">
    <!-- Owl Carousel min css -->
    <link rel="stylesheet" href="/coverscart/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/coverscart/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="/coverscart/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="/coverscart/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="/coverscart/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="/coverscart/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="/coverscart/css/custom.css">


    <!-- Modernizr JS -->
    <script src="/coverscart/js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start Header Style -->
        <header id="htc__header" class="htc__header__area header--one">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                                <div class="logo">
                                     <a href="index.asp"><img src="/coverscart/images/logo/4.png" alt="logo images"></a>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                        <li class="drop"><a href="/coverscart/index.asp">Home</a></li>
                                        <li><a href="/coverscart/apple/iphone-12/index.asp">Iphone 12</a></li>
                                        <li><a href="/coverscart/apple/iphone-12-pro/index.asp">Iphone 12 pro</a></li>
                                        <li><a href="/coverscart/apple/iphone-12-pro-max/index.asp">Iphone 12 pro max</a></li>
                                        <li><a href="/coverscart/apple/iphone-12-mini/index.asp">Iphone 12 mini</a></li>
                                        <li><a href="/coverscart/contact.asp">contact</a></li>
                                    </ul>
                                </nav>

                                <div class="mobile-menu clearfix visible-xs visible-sm">
                                    <nav id="mobile_dropdown">
                                        <ul>
                                            <li><a href="/coverscart/index.asp">Home</a></li>
                                           
                                            <li><a  href="/coverscart/apple/">Apple</a>
                                                <ul>
                                                    <li><a href="/coverscart/apple/iphone-12/index.asp">Iphone 12</a></li>
                                                    <li><a href="/coverscart/apple/iphone-12-pro/index.asp">Iphone 12 pro</a></li>
                                                    <li><a href="/coverscart/apple/iphone-12-pro-max/index.asp">Iphone 12 pro max</a></li>
                                                    <li><a href="/coverscart/apple/iphone-12-mini/index.asp">Iphone 12 mini</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="/coverscart/contact.asp">contact</a></li>
                                        </ul>
                                    </nav>
                                </div>  
                            </div>
                            <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                                <div class="header__right">
                                    <div class="header__account">
                                            <%
                                            if NOT IsEmpty(Session("nameforcheckout")) Then
                                            
                                                %><a href="<%Response.Write("logout.asp")%>">Logout</a> 
                                                <%  
                                            else
                                                %><a href="<%Response.Write("login.asp")%>">Login/Register</a> 
                                                <%
                                            End If
                                            %>
                                        
                                    </div>
                                    <div class="htc__shopping__cart">
                                        <a href="/coverscart/cart.asp"><i class="icon-handbag icons"></i></a>
                                        <a href="/coverscart/cart.asp">
                                            <span class="htc__qua">
                                                <%
                                                    If IsEmpty(Session("cart"))  Then
                                                        
                                                        Response.Write("0")
                                                    Else
                                                        Response.Write(UBound(Session("cart"))+1)
                                                        
                                                    End If

                                                    %>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Area -->
