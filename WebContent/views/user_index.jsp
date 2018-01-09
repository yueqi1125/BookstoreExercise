<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>网上书城</title>
		
		<style>
			.finger{
				cursor:pointer;
			}
		</style>
		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
	
		<link href="${pageContext.request.contextPath}/static/basic/css/demo.css" rel="stylesheet" type="text/css" />
	
		<link href="${pageContext.request.contextPath}/static/css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/static/css/skin.css" rel="stylesheet" type="text/css" />
		<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
	
		<link href="${pageContext.request.contextPath}/static/css/personal.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/css/systyle.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/static/css/infstyle.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.js"></script>
		<script>
			//if("${requestScope.msgdiv}" == "user_infor"){
			//	$(function(){
			//		$(".main-wrap").load("${pageContext.request.contextPath}/views/user_infor.jsp?msg='${requestScope.msg}'");
			//	});
			//}
			$(document).ready(function(){
				$("#Information").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_infor.jsp");
				})
			});
			$(document).ready(function(){
				$("#Information1").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_infor.jsp");
				})
			});
			$(document).ready(function(){
				$("#user_index").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_index.jsp .wrap-left,.wrap-right");
				})
			});
			$(document).ready(function(){
				$("#user_index1").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_index.jsp .wrap-left,.wrap-right");
				})
			});
			$(document).ready(function(){
				$("#Safety").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_safety.jsp");
				})
			});
			$(document).ready(function(){
				$("#Address").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_address.jsp");
				})
			});
			$(document).ready(function(){
				$("#Order").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_order.jsp");
				})
			});
			$(document).ready(function(){
				$("#Bill").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_bill.jsp");
				})
			});
			$(document).ready(function(){
				$("#Collection").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_collection.jsp");
				})
			});
			$(document).ready(function(){
				$("#Collection1").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_collection.jsp");
				})
			});
			$(document).ready(function(){
				$("#Comment").click(function(){
					$(".main-wrap").load("${pageContext.request.contextPath}/views/user_comment.jsp");
				})
			});
			$(document).ready(function(){
				$("#Adminlogin").click(function(){
					window.location.href="${pageContext.request.contextPath}/views/admin_login.jsp";
				})
			});
			$(document).ready(function(){
				$("#user_main").click(function(){
					window.location.href="${pageContext.request.contextPath}/views/user_main.jsp";
				})
			});
			$(document).ready(function(){
				$("#user_login").click(function(){
					window.location.href="${pageContext.request.contextPath}/views/user_login.jsp";
				})
			});
		</script>
	</head>
	
	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a id="user_main" class="finger">商城首页</a></div>
							</div>
							<c:choose>
								<c:when test="${sessionScope.User == null}">
									<div class="topMessage my-shangcheng">
										<div class="menu-hd MyShangcheng"><a id="user_login" class="finger" target="_top"><i class="am-icon-user am-icon-fw"></i>登录/注册</a></div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="topMessage my-shangcheng">
										<div class="menu-hd MyShangcheng"><a id="user_index" class="finger" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
									</div>
									<div class="topMessage favorite">
										<div class="menu-hd"><a id="Collection1" class="finger" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
									</div>
									<div class="topMessage my-shangcheng">
										<div class="menu-hd MyShangcheng"><a id="user_login" class="finger" target="_top"><i class="am-icon-user am-icon-fw"></i>退出登录</a></div>
									</div>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</article>
		</header>
            <div class="nav-table">
				<div class="long-title"><span class="all-goods">欢迎来到本书城</span></div>
			</div>
			<b style="top: 90px" class="line"></b>
		<div class="center">
			<div class="col-main">
				<!--主div坐标-->
				<div class="main-wrap">
					<div class="wrap-left">
						<div class="wrap-list" id="wrap-list">

							<!--订单 -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>我的订单
								</div>
								<ul>
									<li><a href="order.html"><i><img src="../static/images/pay.png"/></i><span>全部订单</span></a></li>
									<li><a href="order.html"><i><img src="../static/images/send.png"/></i><span>待发货<em class="m-num">1</em></span></a></li>
									<li><a href="order.html"><i><img src="../static/images/receive.png"/></i><span>待收货</span></a></li>
									<li><a href="order.html"><i><img src="../static/images/comment.png"/></i><span>待评价<em class="m-num">3</em></span></a></li>
								</ul>
							</div>
							<!--物流 -->
							<div class="m-logistics">

								<div class="s-bar">
									<i class="s-icon"></i>我的物流
								</div>
								<div class="s-content">
									<ul class="lg-list">
										<div class="clear"></div>

										<li class="lg-item">
											<div class="item-info">
												<a href="#">
													<img src="../static/images/88.jpg_120x120xz.jpg" alt="礼盒袜子女秋冬 纯棉袜加厚 女式中筒袜子 韩国可爱 女袜 女棉袜">
												</a>

											</div>
											<div class="lg-info">

												<p>已发货</p>
												<time>2015-12-19 15:35:42</time>
											</div>
											<div class="lg-confirm">
												<a class="i-btn-typical" href="#">确认收货</a>
											</div>
										</li>

									</ul>

								</div>

							</div>

							<!--收藏夹 -->
							<div class="you-like">
								<div class="s-bar">我的收藏</div>
								<div class="s-content">
									<div class="s-item-wrap">
										<div class="s-item">

											<div class="s-pic">
												<a href="#" class="s-pic-link">
													<img src="../static/images/1-item_pic.jpg_220x220.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
												</a>
											</div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>

											</div>
											<div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a></div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.74%</span>
												<span class="s-sales">月销: 69</span>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="wrap-right">

						<!-- 日历-->
						<div class="day-list">
							<div class="s-bar">
								<a class="i-history-trigger s-icon" href="#"></a>我的日历
								<a class="i-setting-trigger s-icon" href="#"></a>
							</div>
							<div class="s-care s-care-noweather">
								<div class="s-date">
									<em>21</em>
									<span>星期一</span>
									<span>2015.12</span>
								</div>
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

			</div>

			<aside class="menu">
				<ul>
					<li class="person active">
						<a id="user_index1" class="finger">个人中心</a>
					</li>
					<li class="person">
						<a>个人资料</a>
						<ul>
							<li> <a id="Information" class="finger">个人信息</a></li>
							<li> <a id="Safety" class="finger">安全设置</a></li>
							<li> <a id="Address" class="finger">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a>我的交易</a>
						<ul>
							<li><a id="Order" class="finger">订单管理</a></li>
						</ul>
					</li>
					<li class="person">
						<a>我的资产</a>
						<ul>
							<li> <a id="Bill" class="finger">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a>我的小窝</a>
						<ul>
							<li> <a id="Collection" class="finger">收藏</a></li>
							<li> <a id="Comment" class="finger">评价</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>
