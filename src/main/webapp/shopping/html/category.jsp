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

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/jquery.actual.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/fancyBox/jquery.fancybox.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.elevatezoom.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/theme-script.js"></script>
    <script>
        $(function () {
            $("#checkLi li").eq(0).removeClass("active");
            $("#checkLi li").eq(${clothSort+1}).addClass("active");

        })
        function queryDetial(id) {
            location.href="${pageContext.request.contextPath}/cloth/findClothById?id="+id;
        }
    </script>
    <title>Kute shop</title>
    <style>

    </style>
</head>
<body class="category-page">
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
            <span class="navigation_page">全部宝贝</span>
            <c:if test="${clothSort==0}">
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">搜索商品</span>
            </c:if>
            <c:if test="${clothSort==1}">
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">风衣|外套</span>
            </c:if>
            <c:if test="${clothSort==2}">
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">连衣裙</span>
            </c:if>
            <c:if test="${clothSort==3}">
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">>打底衫</span>
            </c:if>
            <c:if test="${clothSort==4}">
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">>衬衫</span>
            </c:if>
            <c:if test="${clothSort==5}">
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">>裤装</span>
            </c:if>
            <c:if test="${clothSort==6}">
                <span class="navigation_page">>半身裙</span>
            </c:if>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <!-- Left colunm -->
            <!-- ./left colunm -->
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-9" id="center_column">
                <!-- category-slider -->
                <!-- ./category-slider -->
                <!-- subcategories -->
                <!-- ./subcategories -->
                <!-- view-product-list-->
                <div id="view-product-list" class="view-product-list">
                    <h2 class="page-heading">

                        <span class="page-heading-title">全部宝贝</span>
                    </h2>
                    <ul class="display-product-option">
                        <li class="view-as-grid selected">
                            <span>grid</span>
                        </li>
                        <li class="view-as-list">
                            <span>list</span>
                        </li>
                    </ul>
                    <!-- PRODUCT LIST -->
                    <ul class="row product-list grid">
                        <c:forEach items="${clothList}" var="cloth">
                            <li class="col-sx-12 col-sm-4" id="ccccc">
                                <div class="product-container">
                                    <div class="left-block">
                                        <c:if test="${login_user ==null}">
                                            <a href="${pageContext.request.contextPath}/shopping/html/login.jsp">
                                        </c:if>
                                        <c:if test="${login_user !=null}">
                                        <if href="javascript:void(0)" onclick="queryDetial(${cloth.clothID})">
                                        </c:if>
                                            <img class="img-responsive" width="300" height="366" alt="product" src="${pageContext.request.contextPath}/shopping/html/assets/${cloth.clothImg}" />
                                        </a>
                                        <div class="quick-view">
                                                <a title="Add to my wishlist" class="heart" href="#"></a>
                                                <a title="Add to compare" class="compare" href="#"></a>
                                                <a title="Quick view" class="search" href="#"></a>
                                        </div>
                                        <div class="add-to-cart">
                                            <c:if test="${login_user ==null}">
                                                <a title="Add to Cart" href="${pageContext.request.contextPath}/shopping/html/login.jsp">查看详情</a>
                                            </c:if>
                                            <c:if test="${login_user !=null}">
                                                <a title="Add to Cart" href="#add" onclick="queryDetial(${cloth.clothID})">查看详情</a>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="right-block">
                                        <h5 class="product-name" style="height: 55px">
                                            <c:if test="${login_user ==null}">
                                                <a href="${pageContext.request.contextPath}/shopping/html/login.jsp" >${cloth.clothName}</a>
                                            </c:if>
                                            <c:if test="${login_user !=null}">
                                            <a href="javascript:void(0)" onclick="queryDetial(${cloth.clothID})">${cloth.clothName}</a>
                                            </c:if>
                                        </h5>
                                        <div class="product-star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </div>
                                        <div class="content_price">
                                            <span class="price product-price">¥${cloth.clothPrice}</span>
                                        </div>
                                        <div class="info-orther">
                                            <p>Item Code: #${cloth.clothID}</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>

                    </ul>
                    <!-- ./PRODUCT LIST -->
                </div>
                <!-- ./view-product-list-->
                <div class="sortPagiBar">
                    <div class="bottom-pagination">
                        <nav>
                          <ul class="pagination">
                              <c:if test="${clothTitle >0}">
                                 <c:forEach var="i" step="1" begin="1" end="${clothTitle+1}">
                                     <c:if test="${clothSort !=null}">
                                        <li><a href='${pageContext.request.contextPath}/cloth/findCloth?id=${clothSort}&startIndex=${(i-1)*9}'>${i}</a></li>
                                     </c:if>
                                     <c:if test="${clothSort ==null}">
                                         <li><a href='${pageContext.request.contextPath}/cloth/findCloth?startIndex=${(i-1)*9}'>${i}</a></li>
                                     </c:if>
                                 </c:forEach>
                              </c:if>
                          </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>

<!-- Footer -->

<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>

</body>
</html>
