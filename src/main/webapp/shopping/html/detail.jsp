<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/select2/css/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.bxslider/jquery.bxslider.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/owl.carousel/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery-ui/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/fancyBox/jquery.fancybox.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/css/responsive.css" />
    <!-- Script-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery/jquery-1.11.2.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/select2/js/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/owl.carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.countdown/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.elevatezoom.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery-ui/jquery-ui.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/fancyBox/jquery.fancybox.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/jquery.actual.min.js"></script>


    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/theme-script.js"></script>
    <script>
        function addConsume() {
            var consumeSize=$("#selectSize").val();
            var clothId=$("#clothId").val();
            if (confirm("您确定要加入购物车吗？")){
                <%--$.post("${pageContext.request.contextPath}/shop/cart/addCart?id="+clothId+"&consumeSize="+consumeSize,function (d) {--%>
                <%--});--%>
                document.getElementById("consumeFrom").submit();
            }
        }
    </script>
    <title>Kute shop</title>
</head>
<body class="product-page">
<!-- HEADER -->
<div id="header" class="header">
    <jsp:include page="head.jsp" />
    <jsp:include page="menu.jsp" />
</div>
<!-- end header -->

<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix">
            <a class="home" href="${pageContext.request.contextPath}/shopping/html/index.jsp" title="Return to Home">首页</a>
            <span class="navigation-pipe">&nbsp;</span>
            <a href="${pageContext.request.contextPath}/cloth/findCloth" title="Return to Home">全部商品</a>
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">${clothByID.clothName}</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <!-- Left colunm -->
            <!-- ./left colunm -->
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-9" id="center_column">
                <form id="consumeFrom" action="${pageContext.request.contextPath}/shop/cart/addCart" method="post">
                <!-- Product -->
                    <div id="product">
                        <div class="primary-box row">
                            <div class="pb-left-column col-xs-12 col-sm-6">
                                <!-- product-imge-->
                                <div class="product-image">
                                    <div class="product-full">
                                        <img id="product-zoom" src='${pageContext.request.contextPath}/shopping/html/assets/${clothByID.clothImg}' />
                                    </div>
                                </div>
                                <!-- product-imge-->
                            </div>
                            <div class="pb-right-column col-xs-12 col-sm-6">
                                <h1 class="product-name">${clothByID.clothName}</h1>
                                <div class="product-comments">
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                </div>
                                <div class="product-price-group">
                                    <span class="price">￥${clothByID.clothPrice}</span>
                                </div>
                                <div class="info-orther">
                                    <p>
                                        <input  type="hidden" id="clothId" name="id" value="${clothByID.clothID}">
                                        商品ID: ${clothByID.clothID}
                                    </p>
                                </div>
                                <div class="form-option">
                                    <div class="attributes">
                                        <div class="attribute-label">数量:</div>
                                        <div class="attribute-list product-qty">
                                            <div class="qty">
                                                <input id="option-product-qty" type="text" name="count1" value="1">
                                            </div>
                                            <div class="btn-plus">
                                                <a href="#" class="btn-plus-up">
                                                    <i class="fa fa-caret-up"></i>
                                                </a>
                                                <a href="#" class="btn-plus-down">
                                                    <i class="fa fa-caret-down"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="attributes">
                                        <div class="attribute-label">尺寸:</div>
                                        <div class="attribute-list">
                                            <select id="selectSize" name="consumeSize">
                                                <option value="XS">XS</option>
                                                <option value="S">S</option>
                                                <option value="M">M</option>
                                                <option value="L">L</option>
                                                <option value="XL">XL</option>
                                                <option value="XXL">XXL</option>
                                            </select>
                                            <a id="size_chart" class="fancybox" href="${pageContext.request.contextPath}/shopping/html/assets/data/size-chart.jpg">Size Chart</a>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="form-action">
                                    <div class="button-group">
                                        <a class="btn-add-cart" href="javascript:void(0)" onclick="addConsume()">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- tab product -->
                        <!-- ./tab product -->
                        <!-- box product -->
                        <!-- ./box product -->
                    </div>
                <!-- Product -->
                </form>
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>

<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>

</body>
</html>
