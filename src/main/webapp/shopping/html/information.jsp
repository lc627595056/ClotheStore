<%--
  Created by IntelliJ IDEA.
  User: 枫桥夜泊
  Date: 2020/6/1
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        var flag1=false;
        var flag2=false;
        var flag3=false;
        function checkPassword() {
            let userPassword = $("#userPassword").val();
            let reg2=/^[A-Za-z0-9]{5,10}/;
                if (!reg2.test(userPassword)){
                    $("#userPasswordMsg").html("密码必须是4-15位的数字或字母组成")
                    flag1=false;
                }else if (userPassword==${login_user.userPassword}){
                    $("#userPasswordMsg").html("密码与原密码相同")
                    flag1=false;
                }else {
                    $("#userPasswordMsg").html("")
                    flag1=true;
                }

        }
        function checkPassword1() {
            let userPassword = $("#userPassword").val();
            let userPassword1 = $("#userPassword1").val();
            let reg2=/^[A-Za-z0-9]{5,10}/
            if (!reg2.test(userPassword1)){
                $("#userPasswordMsg1").html("密码必须是4-15位的数字或字母组成")
                flag2=false;
            }else if(userPassword!=userPassword1){
                $("#userPasswordMsg1").html("两次输入密码不一致")
                flag2=false;
            }else{
                $("#userPasswordMsg1").html("")
                flag2=true;
            }
        }
        function checkPhone() {
            flag1=true;
            flag2=true;
            flag3=true;
        }
        function checkAddress() {
            flag1=true;
            flag2=true;
            flag3=true;
        }
        function checkUpdate() {
            //密码校验
            let password= $("#userPassword").val();
            let reg2=/^[A-Za-z0-9]{5,10}/
            if (!reg2.test(password)){
                $("#userPasswordMsg").html("密码必须是4-15位的数字或字母组成")
                flag3=false;
            }else {
                flag3=true;
            }
            console.log(flag1+"x"+flag2+"x"+flag3)
            if (flag1&flag2&flag3){
                $("#userUpdateForm").submit();
            }

        }
    </script>
    <title>Login - Kute shop</title>
</head>
<body class="category-page">
<!-- HEADER -->
<div id="header" class="header">
    <!--/.top-header -->
    <!-- MAIN HEADER -->
    <jsp:include page="head.jsp" />
    <jsp:include page="menu.jsp" />
</div>
<!-- end header -->
<!-- page wapper-->
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix">
            <a class="home" href="${pageContext.request.contextPath}/shopping/html/index.jsp" title="Return to Home">首页</a>
            <span class="navigation-pipe"></span>
            <span class="navigation_page">会员信息</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- page heading-->
        <h2 class="page-heading">
            <span class="page-heading-title2">
                <c:if test="${sessionScope.login_user!=null}">
                    我的信息
                </c:if>
                <c:if test="${sessionScope.login_user==null}">
                    密码更改
                </c:if>
            </span>
        </h2>
        <!-- ../page heading-->
        <div class="page-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="box-authentication" >
                        <form action="${pageContext.request.contextPath}/shop/user/modifyPassWord" method="post" id="userUpdateForm">
                            <c:if test="${sessionScope.login_user!=null}">
                                <div class="form-group">
                                    用户名：<span style="color: black;font-weight: bold">&nbsp;&nbsp;&nbsp;${login_user.userName}</span>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.login_user==null}">
                                <input type="hidden" name="userEmail" value="${email}">
                                <input type="hidden" name="userPhone" value="${login_user.userPhone}">
                                <input type="hidden" name="userAddress" value="${login_user.userAddress}">
                            </c:if>
                            <div class="form-group">
                                <label for="userPassword">更改密码</label>
                                <input type="text" onkeyup="checkPassword()" class="form-control" name="userPassword" id="userPassword" value="${login_user.userPassword}" placeholder="请输入密码">
                                <span id="userPasswordMsg" style="color: red;"></span>
                            </div>
                            <div class="form-group">
                                <label for="userPassword1">重复密码</label>
                                <input type="text" onkeyup="checkPassword1()" class="form-control" name="userPassword1" id="userPassword1" value="${login_user.userPassword}" placeholder="请再次输入密码">
                                <span id="userPasswordMsg1" style="color: red;"></span>
                            </div>
                            <c:if test="${sessionScope.login_user!=null}">
                                <div class="form-group">
                                    真实姓名：<span style="color: black;font-weight: bold">${login_user.userRname}</span>
                                </div>
                                <div class="form-group">
                                    性&nbsp;&nbsp;&nbsp;别：<span style="color: black;font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;${login_user.userSex}</span>
                                </div>
                                <div class="form-group">
                                    消&nbsp;&nbsp;&nbsp;费：<span style="color: black;font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;${login_user.userConsume}</span>
                                </div>
                                <div class="form-group">
                                    <label>手机号</label>
                                    <input type="text" class="form-control" name="userPhone" id="userPhone" value="${login_user.userPhone}" onkeyup="checkPhone()">
                                </div>
                                <div class="form-group">
                                    <label>收货地址</label>
                                    <input type="text" class="form-control" name="userAddress" id="userAddress" value="${login_user.userAddress}" onkeyup="checkAddress()">
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="userEmail" value="${login_user.userEmail}">
                                    邮&nbsp;&nbsp;&nbsp;箱：<span style="color: black;font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;${login_user.userEmail}</span>
                                </div>
                            </c:if>
                            <div class="form-group">
                                <button type="button" id="registerBtn" class="btn btn-primary" onclick="checkUpdate()">修改</button>
                            </div>
                        </form>
                    </div>
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

