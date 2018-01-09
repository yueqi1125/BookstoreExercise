<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>管理员主页</title>
	<style type="text/css">
		.notice{
			border-style:solid;
			border-width:1px;
			border-color:#000;
		}
	</style>
	<link href="${pageContext.request.contextPath}/static/admin/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/js/jquery.js"></script>
</head>

<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath}/static/admin/images/sun.png" alt="天气" /></span>
    <b>
    	<c:choose>
	    	<c:when test="${sessionScope.Admin.trueName != null}">
				<c:out value="${sessionScope.Admin.trueName}"/>
			</c:when>
			<c:otherwise>
				<c:out value="管理员"/>
			</c:otherwise>
    	</c:choose>
    	早上好，欢迎使用信息管理系统
    </b>(${sessionScope.Admin.adminName})
    <a href="#">帐号设置</a>
    </div>
    
    <div class="xline"></div>
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    	<b>网上书城后台管理系统使用指南：</b>
    </div>
    <ul class="infolist">
	    <li><span>您可以对员工信息进行管理</span></li>
	    <li><span>您可以对图书信息进行管理</span></li>
	    <li><span>您可以对订单信息进行查看管理</span></li>
	    <li><span>您可以查看利润统计的详情</span></li>
	    <li><span>您可以进行个人信息进行修改</span></li>
    </ul>
</body>

</html>