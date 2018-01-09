<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>地址管理</title>

		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/css/addstyle.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.js"></script>
		<script type="text/javascript">
			$.ajax({
				type: "GET",
				url: "${pageContext.request.contextPath}/user_address",
				async: false,
				cache: false,
				error: function(result) {
	            },
	            success: function(result) {
	            	arr = JSON.parse(result);
	            	
	            	for(var i=0;i<arr.length;i++){
	            		alert(result)
	            		$(".am-thumbnails").append(
	            			"<li class='user-addresslist defaultAddr'>" +
	            			"<c:if test='${"+ arr[i].sign + "== \'1\' }'><span class='new-option-r'><i class='am-icon-check-circle defaultAddr'></i>默认地址</span></c:if>" +
	            			"<c:if test='${"+ arr[i].sign + "== \'0\' }'><i class='am-icon-check-circle'></i>设为默认</span></c:if>" +
	        				"<p class='new-tit new-p-re'><span class='new-txt'>" + arr[i].userName + "</span>" +
	        					"<c:choose><c:when test='${" + arr[i].tel + "== null}'>" +
	        						"<span class='new-txt-rd2'>未存储手机号</span>" +
        						"</c:when><c:otherwise><span class='new-txt-rd2'>"+ arr[i].tel +
        						"</span></c:otherwise></c:choose></p>" +
	        				"</p><div class='new-mu_l2a new-p-re'><p class='new-mu_l2cw'>" +
        						"<span class='title'>地址：</span>" +
        						"<span class='province'>"+arr[i].pro+"</span>省" +
        						"<span class='city'>"+arr[i].city+"</span>市" +
        						"<span class='dist'>"+arr[i].dis+"</span>区/县<br/>" +
        						"<span class='street'>"+arr[i].address+"</span></p>" +
	        				"</div><div class='new-addr-btn'><a href='#''><i class='am-icon-edit'></i>编辑</a><span class='new-addr-bar'>|</span>" +
        					"<a href='javascript:void(0);' onclick='delClick(this);''><i class='am-icon-trash'></i>删除</a></div></li>"
	            		);
	            	};
	            }
			})
		</script>
	</head>
<body>
	<div class="user-address">
		<!--标题 -->
		<div class="am-cf am-padding">
			<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
		</div>
		<hr/>
		<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
			<c:if test="${arr.length == 0}">
				<li class="user-addresslist">
					<p class="new-tit new-p-re">
						<span class="new-txt">未保存</span>	
						<span class="new-txt-rd2">未保存手机号</span>
					</p>
					<div class="new-mu_l2a new-p-re">
						<p class="new-mu_l2cw">
							<span class="title">地址：</span>
							<span class="province">省：未保存</span>
							<span class="city">市：未保存</span>
							<span class="dist">区/县：未保存</span>
							<span class="street">具体地址：未保存</span></p>
					</div>
				</li>
			</c:if>
			<c:if test="${arr.length != 0}">
				<c:forEach items="${arr}" var="ads">
					<li class="user-addresslist defaultAddr">
						<c:choose>
							<c:when test="${ads.sign == 1}">
								<span class="new-option-r"><i class="am-icon-check-circle defaultAddr"></i>默认地址</span>
							</c:when>
		            		<c:otherwise>
		            			<span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>
	            			</c:otherwise>
	            		</c:choose>
	            		<p class="new-tit new-p-re"><span class="new-txt">${ads.userName}</span>
		            		<c:choose>
		            			<c:when test="${ads.tel == null}">
		        					<span class="new-txt-rd2">未存储手机号</span>
	        					</c:when>
	        					<c:otherwise>
	        						<span class="new-txt-rd2">${ads.tel}</span>
	        					</c:otherwise>
	        				</c:choose>
        				</p>
        				<div class="new-mu_l2a new-p-re"><p class="new-mu_l2cw">
       						<span class="title">地址：</span>
       						<span class="province">${ads.pro}</span>省
       						<span class="city">${ads.city}</span>市
       						<span class="dist">${ads.dis}</span>区/县<br/>
       						<span class="street">${ads.address}</span></p>
        				</div>
        				<div class="new-addr-btn"><a href="#"><i class="am-icon-edit"></i>编辑</a>
        					<span class="new-addr-bar">|</span>
       						<a href="javascript:void(0)" onclick="delClick(this)"><i class="am-icon-trash"></i>删除</a>
       					</div>
					</li>
				</c:forEach>
			</c:if>
		</ul>
		<div class="clear"></div>
		<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
		<!--例子-->
		<div class="am-modal am-modal-no-btn" id="doc-modal-1">

			<div class="add-dress">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="user-name" placeholder="收货人">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input id="user-phone" placeholder="手机号必填" type="email">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-address" class="am-form-label">所在地</label>
							<div class="am-form-content address">
								<select data-am-selected>
									<option value="0" selected>请选择省份</option>
									<option value="a">浙江省</option>
									<option value="b">湖北省</option>
								</select>
								<select data-am-selected>
									<option value="0" selected>请选择城市</option>
									<option value="a">温州市</option>
									<option value="b">武汉市</option>
								</select>
								<select data-am-selected>
									<option value="0" selected>请选择区县</option>
									<option value="a">瑞安区</option>
									<option value="b">洪山区</option>
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
								<small>100字以内写出你的详细地址...</small>
							</div>
						</div>
						
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<a class="am-btn am-btn-danger">保存</a>
								<a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
							</div>
						</div>
					</form>
				</div>

			</div>

		</div>
		<script type="text/javascript">
			$(document).ready(function() {							
				$(".new-option-r").click(function() {
					$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
				});
				
				var $ww = $(window).width();
				if($ww>640) {
					$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
				}
				
			})
		</script>

	</div>
</body>
</html>