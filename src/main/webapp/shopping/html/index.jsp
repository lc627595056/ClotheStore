<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/select2/css/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery.bxslider/jquery.bxslider.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/owl.carousel/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/fancyBox/jquery.fancybox.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery-ui/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css" />
    <!-- Script-->
    <script type="text/javascript" src="assets/lib/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="assets/lib/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/lib/select2/js/select2.min.js"></script>
    <script type="text/javascript" src="assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="assets/lib/owl.carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="assets/lib/jquery.countdown/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.actual.min.js"></script>
    <script type="text/javascript" src="assets/lib/fancyBox/jquery.fancybox.js"></script>
    <script type="text/javascript" src="assets/lib/jquery.elevatezoom.js"></script>
    <script type="text/javascript" src="assets/js/theme-script.js"></script>
    <title>Kute shop</title>
</head>
<body class="home">
<div id="header" class="header">
    <jsp:include page="head.jsp" />
    <jsp:include page="menu.jsp" />
</div>
<!-- end header -->
<!-- Home slideder-->
<div id="home-slider">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 header-top-right">
                <div class="homeslider">
                    <div class="content-slide">
                        <ul id="contenhomeslider">
                          <li><img alt="Funky roots" src="assets/data/option14/slide1.jpg"  title="Funky roots" /></li>
                          <li><img alt="Funky roots" src="assets/data/option14/slide1.jpg"  title="Funky roots" /></li>
                          <li><img  alt="Funky roots" src="assets/data/option14/slide1.jpg"  title="Funky roots" /></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END Home slideder-->
<!-- servives -->
<div class="container">
    <div class="service ">
        <div class="col-xs-6 col-sm-3 service-item">
            <div class="icon">
                <img alt="services" src="assets/data/s1.png" />
            </div>
            <div class="info">
                <a href="#"><h3>免运费</h3></a>
                <span>超过100元</span>
            </div>
        </div>
        <div class="col-xs-6 col-sm-3 service-item">
            <div class="icon">
                <img alt="services" src="assets/data/s2.png" />
            </div>
            <div class="info">
                <a href="#"><h3>30天退换</h3></a>
                <span>质量保证</span>
            </div>
        </div>
        <div class="col-xs-6 col-sm-3 service-item">
            <div class="icon">
                <img alt="services" src="assets/data/s3.png" />
            </div>

            <div class="info" >
                <a href="#"><h3>24小时客服</h3></a>
                <span>在线咨询</span>
            </div>
        </div>
        <div class="col-xs-6 col-sm-3 service-item">
            <div class="icon">
                <img alt="services" src="assets/data/s4.png" />
            </div>
            <div class="info">
                <a href="#"><h3>放心购物</h3></a>
                <span>安全的购物保障</span>
            </div>
        </div>
    </div>
</div>


<!-- Footer -->

<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>
</body>
</html>
