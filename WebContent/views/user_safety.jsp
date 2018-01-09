<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>安全设置</title>
		
		<style>
			.finger{
				cursor:pointer;
			}
		</style>

		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/css/infstyle.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.js" ></script>
		<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
			
		<script type="text/javascript">
			$(document).ready(function(){
				$("#Password").click(function(){
					$(".main-wrap").load("user_password.jsp");
				})
			});
			$(document).ready(function(){
				$("#Question").click(function(){
					$(".main-wrap").load("user_question.jsp");
				})
			});
		</script>
	</head>
<body>
	<div class="user-safety">
		<div class="am-cf am-padding">
			<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账户安全</strong> / <small>Set&nbsp;up&nbsp;Safety</small></div>
		</div>
		<hr/>

		<!--安全设置 -->

		<div class="check">
			<ul>
				<li>
					<i class="i-safety-lock"></i>
					<div class="m-left">
						<div class="fore1">登录密码</div>
						<div class="fore2"><small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small></div>
					</div>
					<div class="fore3">
						<a id="Password" class="finger">
							<div class="am-btn am-btn-secondary">修改</div>
						</a>
					</div>
				</li>
				<li>
					<i class="i-safety-security"></i>
					<div class="m-left">
						<div class="fore1">安全问题</div>
						<div class="fore2"><small>保护账户安全，验证您身份的工具之一。</small></div>
					</div>
					<div class="fore3">
						<a id="Question" class="finger">
							<div class="am-btn am-btn-secondary">认证</div>
						</a>
					</div>
				</li>
			</ul>
		</div>

	</div>
</body>
</html>