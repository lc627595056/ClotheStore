<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Rukada - Responsive Bootstrap4  Admin Dashboard Template</title>
  <!--favicon-->
  <link rel="icon" href="${pageContext.request.contextPath}/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body class="bg-dark">
 <!-- Start wrapper-->
 <div id="wrapper">
	<div class="card card-authentication1 mx-auto my-5">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="${pageContext.request.contextPath}/admin/assets/images/logo-icon.png" alt="logo icon">
				<font style="color: black;font-weight: bold;font-size: 30px;">安提尼管理后台</font>
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">
			  <c:if test="${adminLogin_error==null}">
				  <font style="color: black; font-weight: bold;font-size: 25px;">登录</font>
			  </c:if>
			 <c:if test="${adminLogin_error!=null}">
			  <font style="color: red; font-weight: bold;font-size: 20px;">${adminLogin_error}</font>
			 </c:if>
		  </div>
		    <form method="post" action="${pageContext.request.contextPath}/admin/login/adminLogin">
			  <div class="form-group">
			  <label for="exampleInputUsername" class="">用户名</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="exampleInputUsername" class="form-control input-shadow" placeholder="请输入用户名" name="userName" required="required">
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputPassword" class="">密码</label>
			   <div class="position-relative has-icon-right">
				  <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="请输入密码" name="userPassword" required="required">
				  <div class="form-control-position">
					  <i class="icon-lock"></i>
				  </div>
			   </div>
			  </div>
			 <button type="submit" class="btn btn-primary shadow-primary btn-block waves-effect waves-light">登录</button>
			 <p style="color: red"> ${adminMsg}</p>
			 </form>
		   </div>
		  </div>
	     </div>
    
     <!--Start Back To Top Button-->
    <a href="javaScript:void(0);" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	</div><!--wrapper-->
	
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/admin/assets/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/assets/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/assets/js/bootstrap.min.js"></script>
  
</body>
</html>
