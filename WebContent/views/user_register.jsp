<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>注册</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
	<link href="${pageContext.request.contextPath}/static/css/dlstyle.css" rel="stylesheet" type="text/css">
	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#Login").click(function(){
				window.location.href="user_login.jsp";
			})
		});
		function checkRegister(){
			var user_name = document.getElementsByName("user_name")[0].value;
			var password = document.getElementsByName("password")[0].value;
			var passwordRepeat = document.getElementsByName("passwordRepeat")[0].value;
			if(user_name == ""){
				alert("用户名不能为空！");
				return false;
			}
			if(password == ""){
				alert("密码不能为空！");
				return false;
			}
			if(password != passwordRepeat){
				alert("两次输入的密码不相同！");
				return false;
			}
			return true;
		};
		$('#submit').click(function() {
	        $('#form').submit();
	    });
	</script>
</head>
<body>
	<div style="right:32%" class="login-box">

		<h3 class="title">用户注册</h3>
		<div class="clear"></div>
	
			<div class="am-tabs-bd">
				<div class="am-tab-panel am-active">
					<form id="form" method="post" onsubmit="return checkRegister()" action="${pageContext.request.contextPath}/user_doRegister">
					
					   	<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label>
							<input type="text" name="user_name" placeholder="请输入用户名">
						</div>										
			            <div class="user-pass">
						    <label for="password"><i class="am-icon-lock"></i></label>
						    <input type="password" name="password" placeholder="设置密码">
			            </div>										
			            <div class="user-pass">
						    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
						    <input type="password" name="passwordRepeat" placeholder="确认密码">
			            </div>	
		            </form>
					<div class="am-cf">
						<input id="submit" type="submit" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
					</div>
				</div>
			</div>
			<div class="login-links">
				<a id="Login" class="zcnext am-fr am-btn-default">返回</a>
				<br />
		  	</div>
		</div>

	</div>
</body>
</html>