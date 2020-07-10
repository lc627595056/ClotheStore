<%--
  Created by IntelliJ IDEA.
  User: 枫桥夜泊
  Date: 2020/5/30
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<div id="nav-top-menu" class="nav-top-menu">
    <div class="container">
        <div class="row">
            <div id="main-menu" class="col-sm-12 main-menu">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <i class="fa fa-bars"></i>
                            </button>
                            <a class="navbar-brand" href="#">MENU</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav" style="float: left">
                                <li class="active"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth">全部宝贝</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth?id=1">风衣|外套</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth?id=2">连衣裙</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth?id=3">打底衫</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth?id=4">衬衫</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth?id=5">裤装</a></li>
                                <li><a href="${pageContext.request.contextPath}/cloth/findCloth?id=6">半身裙</a></li>
                            </ul>
                            <ul class="nav navbar-nav cccc"  style="float: right;">
                                <c:if test="${sessionScope.login_user!=null}">
                                    <li><a href="${pageContext.request.contextPath}/shop/user/outLogin">退出</a></li>
                                    <li><a style="border-right: 1px solid #cacaca;" href="${pageContext.request.contextPath}/shopping/html/information.jsp">欢迎您&nbsp;【${login_user.userName}】</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shop/user/viewOrder">我的订单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shopping/html/cart.jsp">购物车</a></li>
                                </c:if>
                                <c:if test="${sessionScope.login_user==null}">
                                    <li><a href="${pageContext.request.contextPath}/admin/admin-login.jsp">管理员登录</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shopping/html/register.jsp">注册</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shopping/html/login.jsp">登录</a></li>
                                </c:if>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                </nav>
            </div>
        </div>
        <!-- userinfo on top-->
        <div id="form-search-opntop">
        </div>
        <!-- userinfo on top-->
        <div id="user-info-opntop">
        </div>
        <!-- CART ICON ON MMENU -->
        <div id="shopping-cart-box-ontop">
            <i class="fa fa-shopping-cart"></i>
            <div class="shopping-cart-box-ontop-content"></div>
        </div>
    </div>
</div>
</html>
