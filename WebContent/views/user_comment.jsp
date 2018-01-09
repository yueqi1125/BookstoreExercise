<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

	<title>评价管理</title>

	<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

	<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/static/css/cmstyle.css" rel="stylesheet" type="text/css">

	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

</head>
<body>
	<!--标题 -->
	<div class="am-cf am-padding">
		<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">评价管理</strong> / <small>Manage&nbsp;Comment</small></div>
	</div>
	<hr/>

	<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

		<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
			<li class="am-active"><a href="#tab1">所有评价</a></li>
		</ul>

		<div class="am-tabs-bd">
			<div class="am-tab-panel am-fade am-in am-active" id="tab1">

				<div class="comment-main">
					<div class="comment-list">
						<ul class="item-list">

							
							<div class="comment-top">
								<div class="th th-price">
									<td class="td-inner">评价</td>
								</div>
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>													
							</div>
							<li class="td td-item">
								<div class="item-pic">
									<a href="#" class="J_MakePoint">
										<img src="../static/images/kouhong.jpg_80x80.jpg" class="itempic">
									</a>
								</div>
							</li>

							<li class="td td-comment">
								<div class="item-title">
									<div class="item-opinion">好评</div>
									<div class="item-name">
										<a href="#">
											<p class="item-basic-info">美唇膏</p>
										</a>
									</div>
								</div>
								<div class="item-comment">
									宝贝非常漂亮，超级喜欢！！！就是物流太慢了，还要我自己去取快递，店家不考虑换个物流么？
								</div>
								<div class="item-info">
									<div>
										<p class="info-time">2015-12-24</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>