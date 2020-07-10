<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/select2/css/select2.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.bxslider/jquery.bxslider.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/owl.carousel/owl.carousel.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/lib/fancyBox/jquery.fancybox.css" />
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/jquery.actual.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/fancyBox/jquery.fancybox.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/lib/jquery.elevatezoom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/shopping/html/assets/js/theme-script.js"></script>
	<title>Kute shop</title>
</head>
<body class="home">
<div id="header" class="header">
<%--	<jsp:include page="" />--%>
	<%@ include file="head.jsp"%>
	<jsp:include page="menu.jsp" />
</div>
<!-- end header -->
<!-- Home slideder-->
<div id="divcontent" align="center">
	<table width="850px" border="0" cellspacing="0">
		<tr>
			<td style="padding:50px; text-align:center">
				<table width="60%" border="0" cellspacing="0" style="margin-top:70px">
					<tr>
						<td style="padding-top:50px">
							<font style="font-weight:bold; color:#FF0000">
								${returnTest}
							</font><br/>
							<br/>
							点击&nbsp;<a href="${pageContext.request.contextPath}/index.jsp" style="font-weight: bold;color: red;">返回</a>&nbsp;回到首页
						</td>
					</tr>
				</table>
				<h1>&nbsp;</h1></td>
		</tr>
	</table>
</div>
</body>
</html>

