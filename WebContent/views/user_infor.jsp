<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
		<script type="text/javascript">
			//var userName = ${sessionScope.User.userName};
			//if(userName == null){
			//	window.location.href="user_login.jsp?msg='请先登录！'";
			//}
			//function checkInfor(){
			//	alert("text");
			//	var tel = document.getElementsByName("tel")[0].value;
			//	if(isNaN(tel)){
			//		alert("请输入正确的电话号码！");
			//		return false;
			//	}
			//	return true;
			//}
			
			$(document).ready(function(){
				$("#button").click(function(){
					$.ajax({
		                type: "POST",
		                url: "${pageContext.request.contextPath}/user_doUpdateInfor",
		                data:$('#infor').serialize(),
		                async: false,
		                cache: false,
		                error: function(result) {
		                    alert("个人信息修改异常!");
		                },
		                success: function(result) {
		                	$("#msg").html(result);
		                }
		            });
				});
			});
		</script>
	</head>
	<body>
		<div class="user-info">
			<!--标题 -->
			<div class="am-cf am-padding">
				<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
			</div>
			<hr/>

			<!--头像 -->
			<div class="user-infoPic">

				<div class="filePic">
					<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
					<img class="am-circle am-img-thumbnail" src="${pageContext.request.contextPath}/static/images/getAvatar.do.jpg" alt="" />
				</div>

				<p class="am-form-help">头像</p>

				<div class="info-m">
					<div><b>用户名：<i>${sessionScope.User.userName}</i></b></div>
				</div>
			</div>

			<!--个人信息 -->
			<div class="info-main">
				<form method="post" class="am-form am-form-horizontal" id="infor" >
					<div id="msg" style="text-align:center"></div>
					<div class="am-form-group">
						<label for="user-name2" class="am-form-label">昵称</label>
						<div class="am-form-content">
							<input type="text" name="nickName" placeholder="昵称" value="${sessionScope.User.nickName}">

						</div>
					</div>

					<div class="am-form-group">
						<label for="user-name" class="am-form-label">姓名</label>
						<div class="am-form-content">
							<input type="text" name="trueName" placeholder="真实姓名" value="${sessionScope.User.trueName}">

						</div>
					</div>
					<div class="am-form-group">
						<label for="user-phone" class="am-form-label">电话</label>
						<div class="am-form-content">
							<input name="tel" placeholder="电话号码" type="tel" value="${sessionScope.User.tel}">

						</div>
					</div>
					<c:if test="${msg != ''}">
						<c:out value="${msg}"/>
					</c:if>
					<div class="info-btn">
						<div class="am-btn am-btn-danger" type="button" id="button">保存修改</div>
					</div>

				</form>
			</div>
		</div>
	</body>
</html>
