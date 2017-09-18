<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
<link href="${ctx}/css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/js/jquery.js"></script>

<script>
$(document).ready(function(){
	$(".click1").click(function(){
	  	var ids = "";
	  	$(".checkone").each(function(){
	  		if($(this).attr("checked") == true){
	  			var id = $(this).val();
	  			ids += id+",";
	  		}
	  	})
	  	if(ids != ""){
		 	var result = confirm("是否删除信息？")
		 	if(result){
		 		
		 		window.location.href="${ctx}/deleteBackBBs?ids="+ids;
		 	}
	  	}
	  	if(ids == ""){
	  		alert("请选择删除信息！");
	  	}
	});
});	
	

</script>


</head>


<body>

	
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li><span><img src="${ctx}/images/backimg/t03.png" /></span><a href="#" target="rightFrame" class="click1">删除</a></li>
        <li><span><img src="${ctx}/images/backimg/t04.png" /></span><a href="seeDiscuss.html" target="rightFrame">统计</a></li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="${ctx}/images/backimg/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th> </th>
        <th>发帖人学号<i class="sort"><img src="${ctx}/images/backimg/px.gif" /></i></th>
        <th>标题</th>
        <th>发布时间</th>
        <th>查看</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${bBsList }" var="bbs">
	        <tr>
	        <td><input name="" type="checkbox" class="checkone" value="${bbs.bssId }" /></td>
	        <td>${bbs.creatId }</td>
	        <td>${bbs.bssTitle }</td>
	        <td>${bbs.creatTime }</td>
	        <td><a href="${ctx }/bbsBackCheck/${bbs.bssId}" class="tablelink">查看</a> </td>
	        </tr> 
        </c:forEach>
         
        </tbody>
    </table>
    
   
    <div class="pagin" style="font-size:16px;color:black">
    	共有[${page.allCount }]条记录,&nbsp共[${page.allPage }]页,&nbsp当前页[${page.nowPage }]&nbsp&nbsp
		<a  class="page" href="${ctx}/student/${nowPage1}" style="font-size:16px;color:red">首页</a>&nbsp
		<a  class="page" href="${ctx}/student/${page.prevPage}" style="font-size:16px;color:red">上一页</a>&nbsp 
	
		<c:forEach items="${page.pageList }" var="pagelist">
			<a class="page" href="${ctx}/student/${pagelist }" style="font-size:16px;color:red">[${pagelist }]</a>
		</c:forEach>
		&nbsp   
		<a class="page"  href="${ctx}/student/${page.nextPage}" style="font-size:16px;color:red">下一页</a>&nbsp
		<a class="page"  href="${ctx}/student/${page.allPage}" style="font-size:16px;color:red">尾页</a>&nbsp
    </div>
    
    
   
    
    
    
    
    
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
