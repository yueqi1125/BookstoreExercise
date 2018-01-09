<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>登录</title>
	<style>
		.finger{
			cursor:pointer;
		}
	</style>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" />
	<link href="${pageContext.request.contextPath}/static/css/dlstyle.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

	<link href="${pageContext.request.contextPath}/basic/css/demo.css" rel="stylesheet" type="text/css" />

	<link href="${pageContext.request.contextPath}/css/hmstyle.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#Register").click(function(){
				$(".login-main").load("user_register.jsp");
			})
		});
		$(document).ready(function(){
			$("#Adminlogin").click(function(){
				window.location.href="${pageContext.request.contextPath}/views/admin_login.jsp";
			})
		});
		function checkLogin(){
			var user_name = document.getElementsByName("user_name")[0].value;
			var pwd = document.getElementsByName("pwd")[0].value;
			
			if(user_name == ""){
				alert("用户名不能为空！");
				return false;
			}
			if(pwd == ""){
				alert("请输入密码！");
				return false;
			}
			return true;
		}
		$(document).ready(function(){
			$('#submitLogin').click(function() {
		        $('#loginForm').submit();
		    });
		});
	</script>
</head>
<body>
	<c:set var="msg0" value="${requestScope.msg}"></c:set>
	<c:set var="msg" value=""></c:set>
	<c:if test="${msg0 != ''}">
		<c:set var="msg" value="${msg0}"></c:set>
	</c:if>
	<div class="am-container header">
		<div class="login-boxtitle">
			<a><img alt="logo" src="${pageContext.request.contextPath}/static/images/banner1.png" /></a>
		</div>
	</div>
	<div class="login-banner">
		<div class="login-main">
			<div style="right:32%" class="login-box">
				<h3 class="title">登录书城</h3>
				<div class="clear"></div>
				<div class="am-tabs-bd">
					<div class="am-tab-panel am-active">
						<form id="loginForm" method="post" onsubmit="return checkLogin()" action="${pageContext.request.contextPath}/user_doLogin">
							<div class="user-name">
								<label for="user"><i class="am-icon-user"></i></label>
								<input type="text" name="user_name" placeholder="请输入用户名">
							</div>
							<div class="user-pass">
								<label for="password"><i class="am-icon-lock"></i></label>
								<input type="password" name="pwd" placeholder="请输入密码">
							</div>
						</form>
	           
						<div class="login-links">
								<c:if test="${msg != ''}">
									<c:out value="${msg}"/>
								</c:if>
								<a href="#" class="am-fr">忘记密码</a>
								<br />
						</div>
						<div class="am-cf">
							<input id="submitLogin" type="submit" value="登 录" class="am-btn am-btn-primary am-btn-sm">
						</div>
					</div>
				</div>
				<div class="login-links">
					<a id="Register" class="zcnext am-fr am-btn-default">注册</a>
				<br />
		  	</div>
			</div>
		</div>
	</div>

	<!--底部-->
	<div class="footer">
		<div class="footer-hd">
			<p>
				<a href="#">兴唐</a>
				<b>|</b>
				<a id="Adminlogin" class="finger">管理员登录</a>
			</p>
		</div>
		<div class="footer-bd">
			<p>
				二阶段项目设计 
			</p>
		</div>
	</div>
</body>
</html>