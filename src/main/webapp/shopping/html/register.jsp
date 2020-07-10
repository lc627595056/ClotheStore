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
        var flag4=false;
        var flag5=false;
        var flag6=false;
        var flag7=false;
        var flag8=false;
        function checkUserName() {
            let userName = $("#userName").val();
            $.post("${pageContext.request.contextPath}/shop/user/checkUserName?userName="+userName,function (data) {
                console.log(data)
                if (data=="0"){
                    $("#usernameMsg").html("该用户名太受欢迎了，请重新注册");
                    flag1=false;
                }else {
                    $("#usernameMsg").html("");
                    flag1=true;
                }
            })
        }
        function checkEmail() {
            let email = $("#userEmail").val();
            $.post("${pageContext.request.contextPath}/shop/user/checkEmail?Email="+email,function (data) {
                console.log(data)
                if (data=="0"){
                    $("#userEmailMsg").html("该邮箱已经注册，请换一个注册");
                    flag2=false;
                }else {
                    $("#userEmailMsg").html("");
                    flag2=true;
                }
            })
        }
        function checkPassword() {
            let userPassword = $("#userPassword").val();
            let reg2=/^[A-Za-z0-9]{5,10}/
            if (!reg2.test(userPassword)){
                $("#userPasswordMsg").html("密码必须是4-15位的数字或字母组成")
                flag3=false;
            }else {
                $("#userPasswordMsg").html("")
                flag3=true;
            }

        }
        function checkPassword1() {
            let userPassword = $("#userPassword").val();
            let userPassword1 = $("#userPassword1").val();
            let reg2=/^[A-Za-z0-9]{5,10}/
            if (!reg2.test(userPassword1)){
                $("#userPasswordMsg1").html("密码必须是4-15位的数字或字母组成")
                flag5=false;
            }else if(userPassword!=userPassword1){
                $("#userPasswordMsg1").html("两次输入密码不一致")
                flag5=false;
            }else{
                $("#userPasswordMsg1").html("")
                flag5=true;
            }
        }
        function checkRegister() {
            let userName = $("#userName").val();
            let reg1=/^[A-Za-z0-9]{4,15}/;
            if (!reg1.test(userName)){
                $("#usernameMsg").html("用户名必须是4-15位的数字或字母组成")
                flag4=false;
            }else {
                flag4=true;
            }
            //密码校验
            let password= $("#userPassword").val();
            let reg2=/^[A-Za-z0-9]{5,10}/
            if (!reg2.test(password)){
                $("#userPasswordMsg").html("密码必须是4-15位的数字或字母组成")
                flag8=false;
            }else {
                flag8=true;
            }
            let email = $("#userEmail").val();
            var reg6 = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
            if (!reg6.test(email)){
                $("#userEmailMsg").html("请输入正确的邮箱")
                flag6=false;
            }else {
                flag6=true;
            }
            console.log(flag1+"x"+flag2+"x"+flag3
                +"x"+flag4+"x"+flag5+"x"+flag6+"x"+flag8)
            if (flag1&flag2&flag3&flag4&flag5&flag6&flag8){
                $("#userForm").submit();
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
            <a class="home" href="#" title="Return to Home">首页</a>
            <span class="navigation-pipe"></span>
            <span class="navigation_page">注册</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- page heading-->
        <h2 class="page-heading">
            <span class="page-heading-title2">注册</span>
        </h2>
        <!-- ../page heading-->
        <div class="page-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="box-authentication" >
                        <form action="${pageContext.request.contextPath}/shop/user/register" method="post" id="userForm">
                            <div class="form-group">
                                <label for="userName">用户名</label>
                                <input type="text" onkeyup="checkUserName()" class="form-control" name="userName" id="userName"
                                       placeholder="请输入用户名">
                                <span id="usernameMsg" style="color: red;"></span>
                            </div>

                            <div class="form-group">
                                <label for="userPassword">密码</label>
                                <input type="password" onkeyup="checkPassword()" class="form-control" name="userPassword" id="userPassword" placeholder="请输入密码">
                                <span id="userPasswordMsg" style="color: red;"></span>
                            </div>
                            <div class="form-group">
                                <label for="userPassword1">重复密码</label>
                                <input type="password" onkeyup="checkPassword1()" class="form-control" name="userPassword1" id="userPassword1" placeholder="请再次输入密码">
                                <span id="userPasswordMsg1" style="color: red;"></span>
                            </div>
                            <div class="form-group">
                                <label for="userRname">真实姓名</label>
                                <input type="text" class="form-control" name="userRname" id="userRname" placeholder="请输入您的真实姓名">
                                <span id="userRnameMsg" style="color: red;"></span>
                            </div>
                            <div class="form-group">
                                <label>性别：</label>
                                <input type="radio" name="userSex" value="男" style="width: 30px;margin-top: 12px;"/>男
                                <input type="radio" name="userSex" value="女" style="width: 30px;margin-top: 12px;"/>女
                            </div>
                            <div class="form-group">
                                <label for="userEmail">收货地址</label>
                                <input type="text" class="form-control" name="userAddress" id="userAddress" placeholder="请输入收货地址">
                            </div>
                            <div class="form-group">
                                <label for="userEmail">手机号</label>
                                <input type="text" class="form-control" name="userPhone" id="userPhone" placeholder="请输入手机号">
                            </div>
                            <div class="form-group">
                                <label for="userEmail">邮箱</label>
                                <input type="text" class="form-control" name="userEmail" id="userEmail" placeholder="请输入邮箱" onkeyup="checkEmail()">
                                <span id="userEmailMsg" style="color: red;"></span>
                            </div>
                            <div class="form-group">
                                <button type="button" id="registerBtn" class="btn btn-primary" onclick="checkRegister()">注册</button>
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
