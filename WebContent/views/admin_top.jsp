<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>管理员顶部页</title>
	<link href="${pageContext.request.contextPath}/static/admin/css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="${pageContext.request.contextPath}/static/admin/js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){	
			//顶部导航切换
			$(".nav li a").click(function(){
				$(".nav li a.selected").removeClass("selected")
				$(this).addClass("selected");
			})	
		})	
	</script>
</head>

<body style="background:url(${pageContext.request.contextPath}/static/admin/images/topbg.gif) repeat-x;">

    <div class="topleft">
    	<a href="admin_main.jsp" target="_parent"><img src="${pageContext.request.contextPath}/static/admin/images/logo.png" title="系统首页" /></a>
    </div>
            
    <div class="topright">    
    <ul>
    <li><a href="admin_login.jsp" target="_parent">退出登录</a></li>
    </ul>
     
    <div class="user">
		<span>
			<c:choose>
		    	<c:when test="${sessionScope.Admin.trueName != null}">
					<c:out value="${sessionScope.Admin.trueName}"/>
				</c:when>
				<c:otherwise>
					<c:out value="${sessionScope.Admin.adminName}"/>
				</c:otherwise>
    		</c:choose>
		</span>
		<i>消息</i>
		<b>5</b>
    </div>    
    
    </div>

</body>
</html>