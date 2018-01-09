<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bookshop</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/css/main.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static//assets/images/favicon.ico">

    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="content wow fadeInUp">	
	<div class="container">
		<div class="row">
			<ul class="breadcrumb text-center light-bg">
				<li class="active">关于我们</li>				
			</ul><!-- /.breadcrumb -->				
		</div><!-- /.row -->
		<div class="about-us inner-top-vs ">
			<div class="image">
				<a data-toggle="modal" data-target=".bs-example-modal-sm" href="#"><img src="${pageContext.request.contextPath}/static/assets/images/about-us/1.jpg" alt="" class="img-responsive"></a>
			</div><!-- /.image -->
			<div class='row'>
				<div class="col-md-10 center-block inner-top-vs">
					<h2 class="center-text text-center"><span>二阶段项目</span>
					   <span>网上书城</span>
					</h2>
				</div><!-- /.col -->
			</div>
			<section class="about-us-block wow fadeInUp inner-top-50">
				<h2 class="title text-center">欢迎来到网上书城</h2>
				<div class="row about-us-content inner-top-50">
					<div class='col-md-6'>
						<div class="left-col">
							<p class="text">第一段Ut perspiciatis unde omnis iste natus error sit vo- luptatem accusantium doloremque laudantium</p>

							<p class="text">第二段Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas<br>
                            sit aspernatur aut odit aut fugit, sed quia consequun- tur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                            <p class="text">第三段Ut enim ad minima veniam, quis nostrum exercitatio- nem ullam corporis suscipit laboriosam</p>
                        </div><!-- /.left-col -->
					</div><!-- /.col -->
					<div class='col-md-6'>
						<div class="right-col">
							<p class="text  inner-bottom-vs">第二列：第四段Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, </p> 
							<div class="image">
								<img src="${pageContext.request.contextPath}/static/assets/images/about-us/2.jpg" alt="" class="img-responsive">
							</div><!-- /.image -->
						</div><!-- /.right-col -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</section><!-- /.best-design-block -->
		</div><!-- /.row -->
	</div><!-- /.container -->	
</div><!-- /.content -->
</body>
</html>