<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${ctx }/css/backstyle.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/css/backselect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx }/js/jquery.js"></script>
<script type="text/javascript" src="${ctx }/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="${ctx }/js/select-ui.min.js"></script>
<script type="text/javascript" src="${ctx }/js/kindeditor.js"></script>

  
<script type="text/javascript">

</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${ctx}/back/DyToMain">首页</a></li>
    <li><a href="${ctx}/back/addDynam">发布新动态</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a class="selected">发布动态</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用动态发布功能！</div>
    <form action="${ctx}/back/saveDynam" method="post">
	    <ul class="forminfo">
	    <li><label>题目<b>*</b></label><input name="dynamicTitle" type="text" class="dfinput" placeholder="请填写 动态名称15字以内"  style="width:518px;"/></li>
	 
	    
	    
	    
	    
	    <li><label>动态内容内容<b>*</b></label>
	    
	
	    <textarea  id="content7" class="dfinput" name="dynamicContent" style="width:700px;height:250px;"></textarea>
	    
	    </li>
	    <li><label>&nbsp;</label><input type="submit" class="btn" value="马上发布"/></li>
	    </ul>
    </form>
    </div> 
    
    
  	
    
    </div>  
       
	</div> 
 
	<!-- <script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>  -->
    
    
    
    
    
    </div>

</body>
</html>
