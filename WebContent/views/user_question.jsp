<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

	<title>安全问题</title>

	<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

	<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/static/css/stepstyle.css" rel="stylesheet" type="text/css">

	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#button").click(function(){
				$.ajax({
	                type: "POST",
	                url: "${pageContext.request.contextPath}/user_doUpdateQA",
	                data:$('#QA').serialize(),
	                async: false,
	                cache: false,
	                error: function(result) {
	                    alert("安全问题修改异常!");
	                },
	                success: function(result) {
	                	var obj = JSON.parse(result);
	                	if(obj.msg = "安全问题修改成功！"){
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
		<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">设置安全问题</strong> / <small>Set&nbsp;Safety&nbsp;Question</small></div>
	</div>
	<hr/>
	<!--进度条-->
	<div class="m-progress">
		<div class="m-progress-list">
			<span class="step-1 step">
                <em class="u-progress-stage-bg"></em>
                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                <p class="stage-name">设置安全问题</p>
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
	<form class="am-form am-form-horizontal" id="QA">
		<div id="msg" style="text-align:center"></div>
		<div class="am-form-group select">
			<label for="user-question1" class="am-form-label">问题</label>
			<div class="am-form-content">
				<select data-am-selected name="question">
					<option value="a" selected>请选择安全问题</option>
					<option value="b">您最喜欢的颜色是什么？</option>
					<option value="c">您初恋的名字？</option>
					<option value="c">您母亲的名字？</option>
					<option value="c">您父亲的名字？</option>
					<option value="c">您的故乡在哪里？</option>
				</select>
			</div>
		</div>
		<div class="am-form-group">
			<label for="user-answer1" class="am-form-label">答案</label>
			<div class="am-form-content">
				<input type="text" name="answer" placeholder="请输入安全问题答案">
			</div>
		</div>
		<div class="info-btn">
			<div class="am-btn am-btn-danger" type="button" id="button">保存修改</div>
		</div>

	</form>
</body>
</html>