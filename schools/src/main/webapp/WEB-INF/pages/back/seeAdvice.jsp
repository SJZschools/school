<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${ctx}/css/backstyle.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/backselect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="${ctx}/js/select-ui.min.js"></script>
<script type="text/javascript" src="${ctx}/js/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
	$(".btn").click(function(){
		window.location.href="${ctx}/back/advice";			  
	});
});
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">学员反馈</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">反馈内容</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
   
    
    <ul class="forminfo">
    <li><label>建议人<b>*</b></label><p name="" type="text" class="dfinput"  style="width:518px;">${advice.user.username }</p></li>
 
    
    
    
    
    <li><label>建议内容<b>*</b></label>
    

    <textarea  id="content7" name="content" style="width:700px;height:250px;visibility:hidden;">${advice.adviceTxt }</textarea>
    
    </li>
   
    <li><label>&nbsp;</label><input type="button" class="btn" value="返回"/></li>
	
    </ul>
    
    </div> 
    
    
  	
    
    </div>  
       
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
    
    
    </div>

</body>
</html>
