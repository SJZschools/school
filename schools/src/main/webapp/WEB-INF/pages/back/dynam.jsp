<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统</title>
<link href="${ctx}/css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
 	var result = confirm("是否增加信息？")
 	if(result){
 		window.location.href="${ctx}/back/addDynam";
 	}
  });
  $(".click1").click(function(){
	  	var ids = "";
	  	$(".checkone").each(function(){
	  		if($(this).attr("checked") == true){
	  			var id = $(this).attr("id")
	  			ids += id+",";
	  		}
	  	})
	  	//alert(typeof(ids) == "")
	  	if(ids != ""){
		 	var result = confirm("是否删除信息？")
		 	if(result){
		 		window.location.href="${ctx}/back/deleteDynam?dynamicId="+ids;
		 	}
	  	}
	  	if(ids == ""){
	  		alert("请选择删除信息！");
	  	}
	});
  
  $(".tablelink").click(function(){
	  	var id = $(this).attr("id");
	 	var result = confirm("是否删除信息？");
	 	if(result){
	 		window.location.href="${ctx}/back/deleteDynam?dynamicId="+id;
	 	}
	});
  $("#checkbox").click(function(){
	  	if($(this).attr("checked") == true){
	  		$(".checkone").html("checked = 'checked'")
	  	};
	});
  /* $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
}); */
  $(".tablelink1").click(function(){
	  	var id = $(this).attr("id");
	 	window.location.href="${ctx}/lifeSingle?dynamicId="+id;
	});
});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${ctx}/back/DyToMain">首页</a></li>
    <li><a href="${ctx}/back/DyToself">校内动态</a></li>
   
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${ctx}/images/backimg/t01.png" /></span><a href="#" target="rightFrame">添加</a></li>
        <li class="click1"><span><img src="${ctx}/images/backimg/t03.png" /></span><a href="#" target="rightFrame">删除</a></li>
        <li><span><img src="${ctx}/images/backimg/t04.png" /></span><a href="seeVideo.html" target="rightFrame">统计</a></li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="${ctx}/images/backimg/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" id="checkbox"/></th>
        <th>编号<i class="sort"><img src="${ctx}/images/backimg/px.gif" /></i></th>
        <th>标题</th>
        <th>发布者</th>
        
        <th>发布时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${dynamicList}" var="dyn">
        <tr>
        <td><input id="${dyn.dynamicId}" name="dychoose" type="checkbox" class="checkone"/></td>
        <td>${dyn.dynamicId}</td>
        <td>${dyn.dynamicTitle}</td>
        <td>${dyn.rname}</td>
      	<%--  <td>${dyn.dynamicTime}</td> --%>
        <td><fmt:formatDate pattern="yyyy/MM/dd " value="${dyn.dynamicTime}" /></td>
        <td><a id="${dyn.dynamicId}" href="#" class="tablelink1">查看</a>     <a id="${dyn.dynamicId}" href="#" class="tablelink"> 删除</a></td>
        </tr> 
        </c:forEach>
               
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>


    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
