<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>修改密码</title>

		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/css/stepstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#buttonpw").click(function(){
					$.ajax({
						type: "GET",
		                url: "${pageContext.request.contextPath}/user_doResetPWD",
		                data:$('#pwd').serialize(),
		                async: false,
		                cache: false,
		                dataType:"text",
		                error: function() {
		                    alert("密码修改异常！");
		                },
		                success: function(result) {
		                	var obj = JSON.parse(result);
		                	if(obj.msg == "密码修改成功！"){
			                	$("#step").removeClass("step-2").addClass("step-1");
		                	}
		                	$("#msg").html(obj.msg);
		                }
		            });
				});
			});	
		</script>
	</head>
<body>
	<div class="am-cf am-padding">
		<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
	</div>
	<hr/>
	<!--进度条-->
	<div class="m-progress">
		<div class="m-progress-list">
			<span class="step-1 step">
                            <em class="u-progress-stage-bg"></em>
                            <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                            <p class="stage-name">重置密码</p>
                        </span>
			<span class="step-2 step" id="step">
                            <em class="u-progress-stage-bg"></em>
                            <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                            <p class="stage-name">完成</p>
                        </span>
			<span class="u-progress-placeholder"></span>
		</div>
		<div class="u-progress-bar total-steps-2">
			<div class="u-progress-bar-inner"></div>
		</div>
	</div>
	<form class="am-form am-form-horizontal" id="pwd">
		<div id="msg" style="text-align:center"></div>
		<div class="am-form-group">
			<label for="user-old-password" class="am-form-label">原密码</label>
			<div class="am-form-content">
				<input type="password" name="password" placeholder="请输入原登录密码">
			</div>
		</div>
		<div class="am-form-group">
			<label for="user-new-password" class="am-form-label">新密码</label>
			<div class="am-form-content">
				<input type="password" name="newPassword" placeholder="由数字、字母组合">
			</div>
		</div>
		<div class="am-form-group">
			<label for="user-confirm-password" class="am-form-label">确认密码</label>
			<div class="am-form-content">
				<input type="password" name="newPasswordRepeat" placeholder="请再次输入上面的密码">
			</div>
		</div>
		<div class="info-btn">
			<div class="am-btn am-btn-danger" type="button" id="buttonpw">保存修改</div>
		</div>

	</form>
</body>
</html>