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
  <title>后台主页</title>
  <!--favicon-->
  <link rel="icon" href="${pageContext.request.contextPath}/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- simplebar CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="${pageContext.request.contextPath}/admin/assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body>

<!-- Start wrapper-->
 <div id="wrapper">
     <!--Start sidebar-wrapper-->
        <jsp:include page="admin-menu.jsp"/>
     <!--End sidebar-wrapper-->
     <header class="topbar-nav">
         <nav class="navbar navbar-expand fixed-top bg-white">
             <ul class="navbar-nav mr-auto align-items-center">
                 <li class="nav-item">
                     <a class="nav-link toggle-menu" href="javascript:void(0);">
                         <i class="icon-menu menu-icon"></i>
                     </a>
                 </li>
             </ul>
         </nav>
     </header>
     <!--End topbar header-->

     <div class="clearfix"></div>

     <div class="content-wrapper">
         <div class="container-fluid">

             <!--Start Dashboard Content-->

             <!--End Dashboard Content-->

         </div>
         <!-- End container-fluid-->

     </div><!--End content-wrapper-->
     <!--Start Back To Top Button-->
     <a href="javaScript:void(0);" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
     <!--End Back To Top Button-->

     <!--Start footer-->
    <%-- <footer class="footer">
       <div class="container">
         <div class="text-center">
             Copyright © 2020 <span style="color: red">安提尼后台管理系统</span>
         </div>
       </div>
     </footer>--%>
     <!--End footer-->

   
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/admin/assets/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/assets/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/assets/js/bootstrap.min.js"></script>
	
  <!-- simplebar js -->
  <script src="${pageContext.request.contextPath}/admin/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- waves effect js -->
  <script src="${pageContext.request.contextPath}/admin/assets/js/waves.js"></script>
  <!-- sidebar-menu js -->
  <script src="${pageContext.request.contextPath}/admin/assets/js/sidebar-menu.js"></script>
  <!-- Custom scripts -->
  <script src="${pageContext.request.contextPath}/admin/assets/js/app-script.js"></script>
  <!-- Chart js -->
  <script src="${pageContext.request.contextPath}/admin/assets/plugins/Chart.js/Chart.min.js"></script>
  <!--Peity Chart -->
  <script src="${pageContext.request.contextPath}/admin/assets/plugins/peity/jquery.peity.min.js"></script>
  <!-- Index js -->
  <script src="${pageContext.request.contextPath}/admin/assets/js/index.js"></script>
  
</body>
</html>
