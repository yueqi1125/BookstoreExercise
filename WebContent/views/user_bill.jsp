<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

	<title>个人账单</title>
	<style>
		.finger{
			cursor:pointer;
		}
	</style>

	<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

	<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/static/css/blstyle.css" rel="stylesheet" type="text/css">
	<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#Billlist").click(function(){
				$(".main-wrap").load("user_billlist.jsp");
			})
		});
	</script>
</head>
<body>
	<div class="user-bill">
		<!--标题 -->
		<div class="am-cf am-padding">
			<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账单</strong> / <small>Electronic&nbsp;bill</small></div>
		</div>
		<hr/>

		<div class="ebill-section">
			<div class="ebill-title-section">
				<h2 class="trade-title section-title">
					消费
					<span class="desc">（金额单位：元）</span>
				</h2>

				<div class=" ng-scope">
					<span class="title-tag"><i class="num ng-binding">总计</i></span>
				</div>
			</div>

			<div class="module-income ng-scope">
				<div class="income-slider ">
					<div class="block-income block  fn-left">
						<h3 class="income-title block-title">
							<span class="desc ng-binding">
								<a id="Billlist" class="finger">查看支出明细</a>
							</span>
						</h3>

						<div ng-class="shoppingChart" class="catatory-details  fn-hide shopping">
							<div class="catatory-detail fn-left">
								<div class="title ng-binding">
									购买书籍
								</div>
								<ul>
									<li class="ng-scope  delete-false">

										<div class="  ng-scope">
											<a href="#" class="text fn-left " title="呢子大衣">
												<span class="emoji-span ng-binding">呢子大衣</span>
												<span class="amount fn-right ng-binding">349.00</span>
											</a>
										</div>
									</li>

									<li class="ng-scope  delete-false">

										<div class="  ng-scope">
											<a href="#" class="text fn-left " title="金士顿羊年限量版16gU盘">
												<span class="emoji-span ng-binding">金士顿羊年限量版16gU盘</span>
												<span class="amount fn-right ng-binding">39.00</span>
											</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="block-expense block  fn-left">
						<div class="slide-button right"></div>
					</div>
					<div class="clear"></div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>