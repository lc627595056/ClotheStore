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



</head>

<body>

<!-- Start wrapper-->
<div id="wrapper">

    <!--Start sidebar-wrapper-->
    <jsp:include page="admin-menu.jsp"/>
    <!--End sidebar-wrapper-->

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
        <h1>${msgadd}</h1>
        <div class="container-fluid">
            <%--<div class="layui-upload">
                <button type="button" class="layui-btn" id="test1">上传图片</button>
                <div class="layui-upload-list">
                    <img class="layui-upload-img" id="demo1">
                    <p id="demoText"></p>
                </div>
            </div>--%>
            <%--<h3 STYLE="color: red">先上传图片后添加,图片大小为300*366,否则会影响用户布局</h3>--%>
            <%--<button type="button" class="layui-btn"  id="test1">--%>
            <%--<i class="layui-icon"></i>上传图片--%>
            <%--</button>--%>
            <%--<button type="button" class="layui-btn"  id="test2">--%>
            <%--<i class="layui-icon"></i>上传--%>
            <%--</button>--%>
            <%--<div id="d"></div>--%>

            <!--Start Dashboard Content-->
            <div class="col-lg-8">
                <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/clothes/addClothA">
                    <button type="button" class="layui-btn" name="upload" id="test1">
                        <i class="layui-icon">上传图片</i>
                    </button>
                    <div id="d"></div>

                    <div class="form-group">
                        <label for="input-1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">商品名称</font></font></label>
                        <input type="text" class="form-control" id="input-1"  required="required" name="clothName">
                    </div>
                    <div class="form-group">
                        <label for="input-2"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">商品单价</font></font></label>
                        <input type="number" class="form-control" id="input-2"  required="required" name="clothPrice">
                    </div>
                    <div class="form-group">
                        <label>商品类型</label>
                        <select class="form-control" name="clothSort" id="clothSort" required="required">
                            <%--<option value="1">风衣|外套</option>--%>
                            <%--<option value="2">连衣裙</option>--%>
                            <%--<option value="3">打底衫</option>--%>
                            <%--<option value="4">衬衫</option>--%>
                            <%--<option value="5">裤装</option>--%>
                            <%--<option value="6">半身裙</option>--%>
                            <%--<option value="7">最代码</option>--%>
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary shadow-primary px-5"><i class="icon-lock"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确认添加</font></font></button>
                    </div>
                </form>
            </div>
        </div>
        <!--End Dashboard Content-->

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
<script src="${pageContext.request.contextPath}/admin/assets/layui/layui.js"></script>
<script>
    var layers;
    layui.use('layer', function(){
        layers= layui.layer;

    });
    layui.use('upload', function(){
        var upload = layui.upload;
        var i=0;//上传成功个数
        var m=0;//选择文件个数
        //执行实例
        var uploadInst = upload.render({
            elem: '#test1', //绑定元素，点击id为test1 的时候弹出选择文件窗口
            url: '${pageContext.request.contextPath}/admin/clothes/addClothA', //上传接口，和普通ajax一样
            bindAction:'#test2',//执行文件上传动作
            auto: false, //选择文件后不自动上传
            multiple:true,  //开启多文件上传
            number:5,  	//同时上传数量
            choose: function(obj){
                //将每次选择的文件追加到文件队列
                var files = obj.pushFile();
                //预读本地文件，如果是多文件，则会遍历。(不支持ie8/9)
                obj.preview(function(index, file, result){
                    console.log("index"+index); //得到文件索引
                    console.log(file); //得到文件对象
                    console.log(result); //得到文件base64编码，比如图片
                    /* 页面显示图片 */
                    $('#d').append('<img src='+ result +'>');
                });
            }
            ,before: function(obj){ //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
                layers.load(); //上传loading
            }
            ,allDone: function(obj){ //当文件全部被提交后，才触发
                console.log(obj.total); //得到总文件数
                console.log(obj.successful); //请求成功的文件数
                console.log(obj.aborted); //请求失败的文件数
                if(obj.total==i){
                    layers.closeAll('loading');
                    layers.msg("全部上传成功",{time:2000});
                    //function () {
                    //	parent.location.reload();    //刷新父页面   第二个参数设置msg显示的时间长短
                    //}
                }
            }
            //请求回调函数
            ,done:function(res,index,upload){
                if(res.code==0){//上传成功
                    i++;
                    console.log(i);
                }
            }
            ,error: function(){
                layer.msg('上传失败');
                layers.closeAll('loading');
            }
        });
    });

    $.post("${pageContext.request.contextPath}/admin/clothes/findALLClothSort",function (data) {
        // data=JSON.parse(data);
        var str="";
        for (let clothSort of data){
            str +='<option value="'+clothSort.clothSortID+'" >'+clothSort.clothSortName+'</option>'
        }
        $("#clothSort").html(str);
    })
</script>
</body>
</html>
