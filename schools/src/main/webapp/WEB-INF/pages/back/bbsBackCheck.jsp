<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="nowPage1" value="1"/>
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

<script>
$(document).ready(function(){
	$("#click1").click(function(){
	  	var ids = "";
	  	
	  	var id = $(this).attr("name");
	  	ids += id+",";
	  
	  	if(ids != ""){
		 	var result = confirm("是否删除信息？")
		 	if(result){
		 		
		 		window.location.href="${ctx}/deleteBackBBs?ids="+ids;
		 	}
	  	}
	  	
	});
});	
	

</script>

</head>

<body>

	
  
    
    <a href="${ctx }/discuss/${nowPage1}" style="font-size:18px;color:black">返回</a>
    
   
    
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">动态内容</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
   
    
    <ul class="forminfo">
    <li><label>标题<b>*</b></label><p name="" type="text" class="dfinput"  style="width:518px;">${bbs.bssTitle }</p></li>
 
    
    
    
    
    <li><label>帖子内容<b>*</b></label>
    

    <textarea  id="content7" name="content" style="width:700px;height:250px;visibility:hidden;">${bbs.bssContext }</textarea>
    
    </li>
   
    <li><label>&nbsp;</label><input type="button" class="btn" id="click1" value="删除" name="${bbs.bssId }"/></li>
	
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
