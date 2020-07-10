<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<% String path = request.getContextPath();%>--%>
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
        function userLogin() {
            let username = $("#username").val();
            let password = $("#password").val();
            $.post("${pageContext.request.contextPath}/shop/user/login?userName="+username+"&userPassword="+password,function (data) {
                if (data == "OK"){
                    location.href="${pageContext.request.contextPath}/index.jsp";
                }else if(data=="activate"){
                    alert("账号未激活，请激活后使用！！！");
                    $("#username").val("");
                    $("#password").val("");
                }else {
                    alert("用户名或密码错误！！！");
                    $("#username").val("");
                    $("#password").val("");
                }
            })

        }
        function update() {
            let email = $("#emmail_register").val();
            $.post("${pageContext.request.contextPath}/shop/user/findEmail?Email="+email,function (data) {
                if (data=="0"){
                    alert("邮件已发送，请在邮箱内点击验证跳转至密码更改页面！");
                }else {
                    alert("邮箱不存在，请核对后提交！！！");
                }
            })

        }
        <%--function updatePassword() {--%>
        <%--    let password=$("#updatePassword").val();--%>
        <%--    $.post("${pageContext.request.contextPath}/updatePassword?updatePassword="+password,function (data) {--%>
        <%--        if (data=="0"){--%>
        <%--            str="<h3>修改成功</h3>"--%>
        <%--            $("#update").html(str)--%>
        <%--        }else {--%>
        <%--            $("#errorUpdate").html("修改失败");--%>
        <%--        }--%>
        <%--    })--%>


        <%--}--%>

    </script>
    <title>Login - Kute shop</title>
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
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">登录</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- page heading-->
        <h2 class="page-heading">
            <span class="page-heading-title2">登录</span>
        </h2>
        <!-- ../page heading-->
        <div class="page-content">
            <div class="row">
                <div class="col-sm-6">
                    <div id="update" class="box-authentication">
                        <h3>忘记密码</h3>
                        <p>请输入您注册时的Email</p>
                        <input id="emmail_register" type="text" class="form-control">
                        <p id="errorUpdate" style="color: red"></p>
                        <button class="button" onclick="update()"><i class="fa fa-user"></i>验证</button>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="box-authentication">
                        <c:choose>
                            <c:when test="${sessionScope.login_user!=null}">
                                <h3 style="color: red;">用户已登录，无需重复登录</h3>
                            </c:when>
                            <c:otherwise>
                                <c:if test="${login_msg==null}">
                                    <h3 style="color: black;">已经注册</h3>
                                </c:if>
                                <c:if test="${login_msg!=null}">
                                    <h3 style="color: red;">${login_msg}</h3>
                                </c:if>
                            </c:otherwise>
                        </c:choose>
                        <label for="username">用户名</label>
                        <input id="username" type="text" class="form-control" name="username">
                        <label for="password">密码</label>
                        <input id="password" type="password" class="form-control" name="password">
                        <button onclick="userLogin()" class="button"><i class="fa fa-lock"></i>登录</button>
                        <p class="forgot-pass"><a href="register.jsp">还没有注册？</a></p>
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
