<%--
  Created by IntelliJ IDEA.
  User: 枫桥夜泊
  Date: 2020/5/30
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!--/.top-header -->
<!-- MAIN HEADER -->
<div class="container main-header">
    <div class="row">
        <div class="col-xs-12 col-sm-3 logo">
            <a href="${pageContext.request.contextPath}/shopping/html/index.jsp"><img alt="Kute Shop" src="${pageContext.request.contextPath}/shopping/html/assets/images/logo.png" /></a>
        </div>
        <div class="col-xs-7 col-sm-7 header-search-box">
            <form class="form-inline" action="${pageContext.request.contextPath}/cloth/findClothByName" method="post">
                <div class="form-group form-category">
                </div>
                <div class="form-group input-serach">
                    <input type="text"  value="${clothName}" name="clothName">
                </div>
                <button type="submit" class="pull-right btn-search"></button>
            </form>
        </div>
    </div>
</div>
</html>
