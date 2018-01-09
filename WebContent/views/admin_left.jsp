<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员菜单</title>
<link href="${pageContext.request.contextPath}/static/admin/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/static/admin/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>欢迎来到后台管理系统</div>
    
    <dl class="leftmenu">
        
	    <dd>
		    <div class="title">
		    	<span><img src="${pageContext.request.contextPath}/static/admin/images/leftico01.png" /></span>管理信息
		    </div>
		    	<ul class="menuson">
		        
		        <li>
		            <div class="header">
			            <cite></cite>
			            <a href="#">员工管理</a>
			            <i></i>
		            </div>
		            <ul class="sub-menus">
			            <li><a href="javascript:;"  target="rightFrame">添加员工</a></li>
			            <li><a href="javascript:;"  target="rightFrame">查看员工</a></li>
		            </ul>
		        </li>
		        
		        <li>
		            <div class="header">
			            <cite></cite>
			            <a href="#">图书管理</a>
			            <i></i>
		            </div>                
		            <ul class="sub-menus">
			            <li><a href="javascript:;"  target="rightFrame">添加图书</a></li>
			            <li><a href="javascript:;"  target="rightFrame">查看图书</a></li>
		            </ul>
		        </li>
		        </ul>    
		    </dd>
		    <dd>
		    <div class="title">
		    	<span><img src="${pageContext.request.contextPath}/static/admin/images/leftico02.png" /></span>书城信息
		    </div>
		    <ul class="menuson">
		        <li><cite></cite><a href="#">入库详情</a><i></i></li>
		        <li>
		        	<div class="header">
			            <cite></cite>
			            <a href="#">订单信息</a>
			            <i></i>
		            </div>  
		            <ul class="sub-menus">
			            <li><a href="javascript:;"  target="rightFrame">未发货</a></li>
			            <li><a href="javascript:;"  target="rightFrame">已发货</a></li>
			            <li><a href="javascript:;"  target="rightFrame">已完成</a></li>
		            </ul>
		        	<i></i>
		        </li>
		        <li><cite></cite><a href="#">盈利详情</a><i></i></li>
		        </ul>     
		    </dd> 
		    <dd>
		    <div class="title">
		    	<span><img src="${pageContext.request.contextPath}/static/admin/images/leftico03.png" /></span>个人中心
		    </div>
		    <ul class="menuson">
		        <li><cite></cite><a href="#">个人信息</a><i></i></li>
		        <li><cite></cite><a href="#">安全设置</a><i></i></li>
		    </ul>    
	    </dd>  
    </dl>
</body>
</html>