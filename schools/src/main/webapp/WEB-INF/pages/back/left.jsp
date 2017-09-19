<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="nowPage" value="1"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${ctx}/css/backstyle.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${ctx}/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>通讯录</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="${ctx}/images/backimg/leftico01.png" /></span>管理信息
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="backIndex" target="rightFrame">首页</a><i></i></li>
		
        <li class="active"><cite></cite><a href="student/${nowPage }" target="rightFrame">学生管理</a><i></i></li>
		
		<li class="active"><cite></cite><a href="discuss/${nowPage }" target="rightFrame">论坛管理</a><i></i></li>
		
		
		
		<li class="active"><cite></cite><a href="${ctx}/back/ScDynam" target="rightFrame">校园动态</a><i></i></li>
        
        <li class="active"><cite></cite><a href="${ctx}/back/advice" target="rightFrame">学员反馈</a><i></i></li>
       
        
        </ul>    
    </dd>
        
    
    
    <dd><div class="title"><span><img src="${ctx}/images/backimg/leftico04.png" /></span>日期管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">自定义</a><i></i></li>
        <li><cite></cite><a href="#">常用资料</a><i></i></li>
        <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li>
    </ul>
    
    </dd>   
    
    </dl>
</body>
</html>
