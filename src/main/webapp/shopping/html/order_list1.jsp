<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  autoFlush="false" buffer="300kb"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Kute shop</title>
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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shopping/html/assets/css/order.css" />
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
					location.href = "${pageContext.request.contextPath}/shop/user/removeByUser?consumeID=" + consumeID;
				}
			}else {
				if (confirm("您确定要删除吗")) {
					location.href = "${pageContext.request.contextPath}/shop/user/removeByUser?consumeID=" + consumeID;
				}
			}
		}
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
</head>

<body class="main home">
<div id="header" class="header" align="center">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
</div>
<div class="columns-container">
	<div class="container" id="columns">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td>
					<div class="breadcrumb clearfix">
						<span class="navigation_page">首页</span>
						<span class="navigation-pipe">&nbsp</span>
						<span class="navigation_page">我的订单</span>
					</div>
					<table cellspacing="0" class="infocontent">
						<tr>
							<td style="padding:20px"><p><b>我的订单</b></p>
								<p>
									共有<font style="color:#FF0000;font-size: 16px;" > ${orders.size()} </font>订单
								</p>
								<table width="100%" border="0" cellspacing="0" class="tableopen">
									<tr>
										<td bgcolor="#A3E6DF" class="tableopentd01">订单号</td>
										<td bgcolor="#A3D7E6" class="tableopentd01">收件人</td>
										<td bgcolor="#A3CCE6" class="tableopentd01">订单时间</td>
										<td bgcolor="#A3B6E6" class="tableopentd01">状态</td>
										<td bgcolor="#A3E2E6" class="tableopentd01">操作</td>
									</tr>
									<c:forEach items="${orders}" var="order">
										<tr>
											<td class="tableopentd02">${order.consumeID}</td>
											<td class="tableopentd02">${order.consumeName }</td>
											<td class="tableopentd02">
												<f:formatDate value="${order.consumeDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
											</td>
											<td class="tableopentd02">${order.consumeState==0?"未支付":"已支付"}</td>
											<td class="tableopentd03">
												<button type="button" onclick="viewOrder('${order.consumeID}')" class="btn btn-success btn-sm waves-effect waves-light m-1"> <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查看</font></font></button>
												&nbsp;&nbsp;
												<button type="button" onclick="removeByUserYON('${order.consumeID}','${order.consumeState}')" class="btn btn-danger btn-sm waves-effect waves-light m-1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">刪除</font></font></button>
											</td>
										</tr>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>
					<div id="test1" align="center"></div>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>
