<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" autoFlush="false" buffer="300kb"  %>
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

    <script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/theme-script.js"></script>
    <script>
        function deleteCart(consumeID,consumeSize) {
            if (confirm("您确定要删除吗？")){
                $.post("${pageContext.request.contextPath}/shop/cart/deleteCart?consumeID="+consumeID+"&consumeSize="+consumeSize,function (data) {
                    if (data=="OK"){
                        alert("删除成功");
                        location.href="${pageContext.request.contextPath}/shopping/html/cart.jsp";
                    }else {
                        alert("删除失败")
                    }
                })
            }
        }

        function viewConsume() {
            if (confirm("查看订单")){
                location.href="${pageContext.request.contextPath}/shopping/html/order.jsp";
            }
        }
    </script>
    <title>Kute shop</title>
</head>
<body class="category-page">
<!-- HEADER -->
<div id="header" class="header">
    <jsp:include page="head.jsp" />
    <jsp:include page="menu.jsp" />
</div>
<!-- end header -->
<!-- page wapper-->
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix">
            <a class="home" href="#" title="Return to Home">首页</a>
            <span class="navigation-pipe">&nbsp</span>
            <span class="navigation_page">你的购物车</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- page heading-->
        <!-- ../page heading-->
        <div class="page-content page-order">
            <div class="order-detail-content">
                <table class="table table-bordered table-responsive cart_summary">
                    <thead>
                        <tr>
                            <th class="cart_product">衣服</th>
                            <th>信息</th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>总价</th>
                            <th ><i class="fa fa-trash-o"></i></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${cart}" var="consume">
                            <tr>
                                <td class="cart_product">
                                    <a href="#"><img src="assets/${consume.key.clothImg}" alt="Product"></a>
                                </td>
                                <td class="cart_description">
                                    <p class="product-name"><a href="#">${consume.key.clothName}</a></p>
                                    <small class="cart_ref">ID : ${consume.key.clothID}</small><br>
                                    <small><a href="#">尺寸: ${consume.key.clothSize}</a></small>
                                </td>
                                <td class="price"><span>￥${consume.key.clothPrice}</span></td>
                                <td class="qty">
                                        ${consume.value}
                                </td>
                                <td class="price">
                                    <span>${consume.key.clothPrice*consume.value}</span>
                                </td>
                                <td class="action">
                                    <a href="javascript:void(0)" onclick="deleteCart('${consume.key.clothID}','${consume.key.clothSize}')">Delete item</a>
                                </td>
                            </tr>
                            <c:set var="totalPrice" value="${totalPrice+consume.key.clothPrice*consume.value}"/>
                        </c:forEach>

                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4"><strong>总计</strong></td>
                            <td colspan="2"><strong>¥${totalPrice}</strong></td>
                        </tr>
                    </tfoot>    
                </table>
                <div class="cart_navigation">
                    <a class="next-btn" href="javascript:void(0)" onclick="viewConsume()">确认订单
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ./page wapper-->
<!-- Footer -->

<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>
</body>
</html>
