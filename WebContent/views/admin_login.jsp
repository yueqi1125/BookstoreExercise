<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="${pageContext.request.contextPath}/static/admin/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/static/admin/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/admin/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){
	    	$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    	})  
	});
	function checkLogin(){
		var admin_name = document.getElementsByName("admin_name")[0].value;
		var admin_pwd = document.getElementsByName("admin_pwd")[0].value;
		
		if(admin_name == ""){
			alert("用户名不能为空！");
			return false;
		}
		if(admin_pwd == ""){
			alert("请输入密码！");
			return false;
		}
		return true;
	}
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(${pageContext.request.contextPath}/static/admin/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
	<c:set var="msg0" value="${requestScope.msg}"></c:set>
	<c:set var="msg" value=""></c:set>
	<c:if test="${msg0 != ''}">
		<c:set var="msg" value="${msg0}"></c:set>
	</c:if>
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


	<div class="logintop">    
	    <span>欢迎登录网上书城后台管理系统</span>    
	    <ul>
		    <li><a href="${pageContext.request.contextPath}/views/user_main.jsp">返回商城首页</a></li>
		    <li><a href="${pageContext.request.contextPath}/views/user_login.jsp">普通用户登录</a></li>
	    </ul>    
    </div>
    
	<div class="loginbody">
		<span class="systemlogo"></span>
		<div class="loginbox loginbox3">
			<ul>
				<form onsubmit="return checkLogin()" method="post" action="${pageContext.request.contextPath}/admin_doLogin">
					<li><input name="admin_name" type="text" class="loginuser" placeholder="请输入用户名"/></li>
					<li><input name="admin_pwd" type="text" class="loginpwd" placeholder="请输入密码"/></li>
					<li>
						<c:if test="${msg != ''}">
							<c:out value="${msg}"/>
						</c:if>
					</li>
					<li><input type="submit" class="loginbtn" value="登录"/>
				</form>
			</ul>
		</div>
	</div>
    <div class="loginbm">二阶段项目设计</div>
</body>

</html>