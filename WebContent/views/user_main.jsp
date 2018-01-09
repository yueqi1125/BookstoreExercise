<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>网上书城</title>
	
	<style>
		.finger{
			cursor:pointer;
		}
	</style>
	
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/css/main.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static//assets/images/favicon.ico">

    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
	

    <script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.customSelect.min.js"></script>    
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.easing-1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/echo.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/scripts.js"></script>
    <script type="text/javascript">
	    $(document).ready(function(){
			$("#user_login").click(function(){
				window.location.href="${pageContext.request.contextPath}/views/user_login.jsp";
			})
		});
	    $(document).ready(function(){
			$("#user_index").click(function(){
				window.location.href="${pageContext.request.contextPath}/views/user_index.jsp";
			})
		});
	    $(document).ready(function(){
			$("#about").click(function(){
				$(".content").load("${pageContext.request.contextPath}/views/user_about.jsp");
			})
		});
    </script>
</head>
<body>

 
    <div id="wrapper" >
        <div id="page-content-wrapper" class="st-pusher">
            <div class="st-pusher-after"></div>
            <!-- ============================================== HEADER ============================================== -->
	
	<header class="header">

		<nav class="navbar navbar-bookshop navbar-static-top" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-5 hidden-xs hidden-sm">
						<ul class="nav navbar-nav">
							<li><a id="about" class="finger">关于我们</a></li>
						</ul><!-- /.nav -->
					</div><!-- /.col -->
					<div class="col-md-3 col-xs-10 col-sm-10 navbar-left">

					</div><!-- /.col -->
					<div class="col-md-4 col-sm-2">
						<ul class="nav navbar-nav navbar-right">
							<c:choose>
								<c:when test="${sessionScope.User == null}">
									<li class="hidden-xs hidden-sm"><a id="user_login" class="finger">登录/注册</a></li>
								</c:when>
								<c:otherwise>
									<li class="hidden-xs hidden-sm"><a href="contact.html">收藏</a></li>
									<li class="hidden-xs hidden-sm"><a id="user_index" class="finger">个人中心</a></li>
									<li class="hidden-xs hidden-sm"><a id="user_login" class="finger">退出登录</a></li>
								</c:otherwise>
							</c:choose>
						</ul><!-- /.nav -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</nav><!-- /.navbar -->
		<!-- Modal -->
		<div id="modal-login-small" class="modal fade login login-xs hidden-sm hidden-lg"  tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<div class="text-center">
							<div class="logo-holder">
								<h1 class="logo">网上书城</h1>
								<div class="logo-subtitle">
									<span>World of books</span>
								</div><!-- /.logo-subtitle --> 
							</div>
						</div>
					</div><!-- /.modal-body -->
					<a href="#" data-dismiss="modal" class="remove-icon"><i class="fa fa-times"></i></a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<div class="main-header">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-4 top-search-holder m-t-10">
						<!-- ============================================== SEARCH BAR ============================================== -->
						<form class="search-form" role="search">
							<div class="form-group">
								<input id="page-search" class="search-input form-control" type="search" placeholder="搜索">
							</div>
							<button class="page-search-button">
								<span class="fa fa-search">
									<span class="sr-only">搜索</span>
								</span>
							</button>
						</form>
					<!-- ============================================== SEARCH BAR : END ============================================== -->					
					</div><!-- /.top-search-holder -->

					<div class="col-xs-12 col-sm-4 col-md-4 text-center logo-holder">
						<!-- ============================================== LOGO ============================================== -->
						<a href="home.html">
							<h1 class="logo">BookShop</h1>
							<div class="logo-subtitle">
								<span>World of books</span>
							</div><!-- /.logo-subtitle -->
						</a>
						<!-- ============================================== LOGO : END ============================================== -->					
					</div><!-- /.logo-holder -->

					<div class="col-xs-12  col-md-2 header-shippment hidden-sm m-t-10">					
					</div><!-- /.header-shippment -->

					<div class="col-xs-12 col-sm-4 col-md-2 animate-dropdown1 top-cart-row m-t-10">
					<!-- ============================================== SHOPPING CART DROPDOWN ============================================== -->                              
						<ul class="clearfix shopping-cart-block list-unstyled">
							<li class="dropdown">
								<a class="menu-toggle-right clearfix" href="/.menu-toggle-right">
									<span class="pull-right cart-right-block">
										<img src="${pageContext.request.contextPath}/static/assets/images/cart-icon.png" alt="" width="46" height="39" />
									</span><!-- /.cart-right-block -->
									<span class="pull-right cart-left-block">
										<span class="cart-block-heading">¥345.39</span>
										<span class="hidden-xs">1件</span>
									</span><!-- /.cart-left-block -->
								</a>
							</li>
						</ul> <!-- /.list-unstyled --> 
					<!-- ============================================== SHOPPING CART DROPDOWN : END ============================================== -->					
					</div><!-- /.top-cart-row -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.main-header -->
	</header>


	<!-- ============================================== HEADER : END ============================================== -->           
    <div class="content">
		<div class="container">
			<div class="row m-t-20">
				<!-- .slidet -->
				 <!-- ========================================== SECTION ‿HERO : END========================================= -->

				<div id="hero1" class='category-slider'>
					<div id="owl-main" class="owl-carousel owl-theme">
						<div class="item">
						  <div class="container">
							<div class="content">
							  <div class="row">
								<div class="col-md-7 col-sm-12">
								  <div class="book-in-shelf">
									<div class="book-shelf"> 
									 <div class="book-cover slider-book-cover m-t-20">
										<img class="img-responsive" alt="" src="${pageContext.request.contextPath}/static/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/static/assets/images/slider-images/01.png" > 
										<div class="fade"></div>
									  </div> <!-- /.book-cover -->                        
									</div><!-- /.book-shelf -->
								  </div><!-- /.book-in-shelf -->
								</div><!-- /.col -->

								<div class="col-md-5 col-sm-12">
								  <div class="clearfix caption vertical-center text-left">
									<div class="slider-caption-heading">
									  <h1 class="slider-title fadeInDown-1"><span>书名</span><br>简介</h1>
									</div><!-- /.slider-caption-heading --> 
									  <div class="actions fadeInDown-2">
										  <span class="book-price price">¥9.59</span>               
											<div class="cart-action"> 
												  <a class="add-to-cart" title="添加购物车" href="javascript:void(0);">添加购物车</a>       
										  </div>
									  </div>
								  </div><!-- /.slider-caption -->
								</div><!-- /.col -->
							  </div><!-- /.row -->
							</div><!-- /.content.caption -->
						  </div><!-- /.container -->
						</div><!-- /.item -->

						 <div class="item">
						  <div class="container">
							<div class="content">
							  <div class="row">
								<div class="col-md-7 col-sm-12">
								  <div class="book-in-shelf">
									<div class="book-shelf"> 
									 <div class="book-cover slider-book-cover m-t-20">
										<img class="img-responsive" alt="" src="${pageContext.request.contextPath}/static/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/static/assets/images/slider-images/01.png"> 
										<div class="fade"></div>
									  </div> <!-- /.book-cover -->                        
									</div><!-- /.book-shelf -->
								  </div><!-- /.book-in-shelf -->
								</div><!-- /.col -->

								<div class="col-md-5 col-sm-12">
								  <div class="clearfix caption vertical-center text-left">
									<div class="slider-caption-heading">
									  <h1 class="slider-title fadeInDown-1"><span>书名ed</span><br>简介ed</h1>
									</div><!-- /.slider-caption-heading -->
									  <div class="actions fadeInDown-2">
										  <span class="book-price price">¥9.59</span>               
											  <div class="cart-action"> 
												  <a class="add-to-cart" title="添加购物车" href="javascript:void(0);">添加购物车</a>       
										  </div>
									  </div>
								  </div><!-- /.slider-caption -->
								</div><!-- /.col -->
							  </div><!-- /.row -->
							</div><!-- /.content.caption -->
						  </div><!-- /.container -->
						</div><!-- /.item -->
					</div>
				</div><!-- /.slider -->
			</div><!-- /.row -->

			<div class="row control-bar wow fadeInUp inner-top-50">			
				<div class="col-md-3 col-sm-6 col-xs-12 filter">
				</div><!-- /.col -->
				<div class="col-md-6 hidden-sm col-xs-12 text-center">
					<p class="books-result">一共34231本书籍</p>
				</div><!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12 sorting">
					
					<div class="le-select" id="sort">
						<select data-placeholder="sort by popularity">
							<option value="" selected="selected">按新品排序</option>
							<option value="1">按上架时间</option>
							<option value="1">按销售数量</option>
							<option value="3">按价格排序：从低到高</option>
							<option value="3">按价格排序：从高到底</option>
						</select>
					</div><!-- /.le-select -->

				</div><!-- /.col -->
			</div><!-- /.row -->

			<div class="row">
				<div class="module inner-top-sm wow fadeInUp" id="books-by-subject">
					<div class="module-heading home-page-module-heading">
						<p class="see-all-link"><a href="#">查看全部</a> &rarr;</p>
					</div><!-- /.module-heading -->
					 <div class="module-body clearfix">					
						<div class="books full-width text-center">
							<!-- .by subject -->
							<div class="col-md-3 col-sm-4 books-by-subject"> 
								<div class="book">      		
									<div class="book-cover">
										<img src="${pageContext.request.contextPath}/static/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/static/assets/images/book-covers/c1.jpg" alt="" width="140" height="212"  />
									</div>
									<div class="book-details clearfix">
										<div class="book-description">
											<h3 class="book-title"><a href="#">艺术，建筑与摄影</a></h3>
											<p class="item-number">310 items</p>
										</div>

									</div>
								</div>              
							</div><!-- /.col -->

							<div class="col-md-3 col-sm-4 books-by-subject">
								<div class="book">	
									<div class="book-cover">
										<img src="${pageContext.request.contextPath}/static/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/static/assets/images/book-covers/c2.jpg" alt="" width="140" height="212"  />
									</div>
									<div class="book-details clearfix">
										<div class="book-description">
											<h3 class="book-title"><a href="#">圣经与圣经研究</a></h3>
											<p class="item-number">199 items</p>
										</div>

									</div>            
								</div>
							</div><!-- /.col -->
							<div class="col-md-3 col-sm-4 books-by-subject">
								<div class="book">	
									<div class="book">	
										<div class="book-cover">
											<img src="${pageContext.request.contextPath}/static/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/static/assets/images/book-covers/c3.jpg" alt="" width="140" height="212"  />
										</div>
										<div class="book-details clearfix">
											<div class="book-description">
												<h3 class="book-title"><a href="#">传记</a></h3>
												<p class="item-number">1921 items</p>
											</div>

										</div>            
									</div>
								</div>
							</div><!-- /.col -->
							<!-- /.by subject -->
						</div><!-- /.row -->
					</div><!-- /.module-body -->
				</div><!-- /.module -->
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.content -->            <!-- ============================================== FOOTER ============================================== -->
	<footer class="footer clearfix">
			<div class="margin-top-10">    
				<div class="row">
					<div class="col-md-12">
						<div class="pull-left">
						</div>
						<p class="copyright-footer pull-left">----->兴唐二阶段项目 <a href="${pageContext.request.contextPath}/views/admin_login.jsp">管理员登录</a></p>
					</div>
				</div>
				<!-- ============================================== FOOTER-BOTTOM : END ============================================== -->        
			</div>
		</div>
	</footer>
<!-- ============================================== FOOTER : END ============================================== -->        </div><!-- /.st-pusher -->
            <!-- ============================================== TOGGLE RIGHT CONTENT ============================================== -->

	<div id="cart-dropdown-wrapper">
		<nav id="menu1" class="cart-dropdown">
			<h2 class="shopping-cart-heading">购物车</h2>
			<div class="cart-items">
				<div class="cart-items-list">			
					<ul>					
						<li class="media">
							<div class="clearfix book cart-book">
								<a href="single-book.html" class="media-left">
									<div class="book-cover">
										<img width="140" height="212" alt="" src="${pageContext.request.contextPath}/static/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/static/assets/images/book-covers/01.jpg">
									</div>
								</a>
								<div class="media-body book-details">
									<div class="book-description">
										<h3 class="book-title"><a href="single-book.html">“奥斯卡”的奇妙生活</a></h3>
										<p class="price m-t-20">$1,401.75</p>
									</div>
								</div>
							</div>
						</li>		
					</ul>
				</div>
				<div class="cart-item-footer">
					<h3 class='total text-center'>总计:<span>¥1,416.00</span></h3>
					<div class="proceed-to-checkout text-center">
						<button type="button" class="btn btn-primary btn-uppercase">购买</button>
					</div>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>
