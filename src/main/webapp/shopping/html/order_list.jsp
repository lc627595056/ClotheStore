<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>会员购买商品</title>
	<style>
		td{
			line-height: 40px;
			text-align: center;
		}
		tr th{
			text-align: center;
		}
	</style>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/layui/css/layui.css">
	<script src="${pageContext.request.contextPath}/admin/assets/layui/layui.js"></script>
	<script>

		// 查看
		function viewOrder(consumeID) {
			location.href = "${pageContext.request.contextPath}/shop/user/viewOrderByID?id=" + consumeID;
		}

		// 删除
		function removeByUserYON(consumeID,state) {
			if (state==0){
				if (confirm("您还未支付，确定要删除吗？")){
					location.href = "${pageContext.request.contextPath}/admin/member/removeConsumeA?consumeID=" + consumeID;
				}
			}else {
				if (confirm("您确定要删除吗")) {
					location.href = "${pageContext.request.contextPath}/admin/member/removeConsumeA?consumeID=" + consumeID;
				}
			}
		}
	</script>
</head>

<body>

<!-- Start wrapper-->
<div id="wrapper">

	<%--<!--Start sidebar-wrapper-->
    <jsp:include page="admin-menu.jsp"/>
    <!--End sidebar-wrapper-->
--%>
	<!--Start topbar header-->
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
			<div class="col-lg-12">
				<div style="float: left">
					<form class="form-inline" action="${pageContext.request.contextPath}/shop/user/viewOrderByID">
						<div class="form-group">
							<label for="name"><span>亲，您的订单如下：</span></label>
							<input type="hidden" class="form-control" id="name" name="consumeID" value="${login_user.userName}" >
						</div>
					</form>
				</div>
				<div style="float: right">
					<form class="form-inline" action="${pageContext.request.contextPath}/shop/user/viewOrderByID">
						<div class="form-group">
							<button type="button" onclick="javascript:history.back(-1);" class="btn btn-success btn-sm waves-effect waves-light m-1" data-toggle="modal" data-target="#modal-animation-1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回</font></font></button>
							<%--<button type="button" onclick="javascript:history.back(-1);" class="btn btn-danger btn-sm waves-effect waves-light m-1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回</font></font></button>--%>
						</div>
					</form>
				</div>
				<table class="table table-info table-striped shadow-info gradient-forest">
					<thead>
					<tr>
						<th scope="col">序号</th>
						<th scope="col">订单号</th>
						<th scope="col">收件人</th>
						<th scope="col">订单时间</th>
						<th scope="col">状态</th>
						<th scope="col" style="text-align: center">操作</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${orders}" var="order" varStatus="s">
						<tr>
							<td scope="row">${s.count}</td>
							<td>${order.consumeID}</td>
							<td>${order.consumeName}</td>
							<td> <f:formatDate value="${order.consumeDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>${order.consumeState==0?"未支付":"已支付"}</td>
							<td>
								<button type="button" onclick="viewOrder('${order.consumeID}')" class="btn btn-success btn-sm waves-effect waves-light m-1"> <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查看</font></font></button>
								&nbsp;&nbsp;
								<button type="button" onclick="removeByUserYON('${order.consumeID}','${order.consumeState}')" class="btn btn-danger btn-sm waves-effect waves-light m-1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">刪除</font></font></button>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div id="test1"></div>
			</div>
			<!--End Dashboard Content-->

		</div>
		<!-- End container-fluid-->

	</div><!--End content-wrapper-->
	<!--Start Back To Top Button-->
	<a href="javaScript:void(0);" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
	<!--End Back To Top Button-->


</div>

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
<script>
	layui.use('laypage', function(){
		var laypage = layui.laypage;

		//执行一个laypage实例
		laypage.render({
			elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
			,count: ${pageModel.recordCount} //数据总数，从服务端得到
			,limit: ${pageModel.pageSize}
			,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
			,curr: ${pageModel.pageIndex}
			,jump: function(obj, first){
				//obj包含了当前分页的所有参数，比如：
				console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
				console.log(obj.limit); //得到每页显示的条数
				//首次不执行
				if(!first){
					//改变切换页面的时候，再次查找数据
					window.location.href="${pageContext.request.contextPath}/shop/user/viewOrder?pageSize="+obj.limit+"&pageIndex="+obj.curr;
				}
			}
		});
	});
</script>
</body>
</html>
