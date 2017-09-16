<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META http-equiv="Content-Script-Type" content="text/javascript">
<title>最无敌的校园网</title>
<link href="${ctx }/css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js"></script>
<script language="javascript" src="${ctx }/js/common.js"></script>
<%-- <script type="text/javascript" src="${ctx }/js/jquery.js"></script> --%>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>

<title>用户新增 </title>
</head>


<body>
<form action="${ctx}/saveBackStudent" method="post" >	
	
    
    <div class="rightinfo">

	<div id="navMenubar" class="tools">
<ul class="toolbar">
	<li id="back"><span><img src="${ctx }/images/backimg/close.png" /></span><a href="student" onclick="">返回</a></li>
	
</ul>

    
    
<div id="tab1" class="tabson">


<div class="eXtremeTable" >

	<table id="ec_table" class="tableRegion" width="98%" >
		<tr class="odd">
			<td>姓名:</td>
			<td><input  type="text" name="username" class="dfinput" /></td>
			
		</tr>
	
		<tr class="odd">
			
			
		</tr>
		<tr class="odd">
			<td>身份证号:</td>
			<td><input type="text" name="userInfo.card" class="dfinput"/>
			</td>
			
		</tr>
		<tr class="odd">
			<td>出生日期:</td>
			<td>
				<input type="text" style="width:121px;" name="userInfo.birthday"
		   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" class="dfinput"/>
			</td>
			<td>入学日期:</td>
			<td>
				<input type="text" style="width:121px;" name="userInfo.timeofenrollment"
		   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" class="dfinput"/>
			</td>
		</tr>
		
		<tr class="odd">
			
			<td>性别:</td>
			<td>
				<input type="radio" name="userInfo.sex" value="男"/>男
				<input type="radio" name="userInfo.sex" value="女"/>女
				<input type="radio" name="userInfo.sex" value="其他"/>其他
			</td>
		</tr>
		<tr class="odd">
			
			<td>电话号码:</td>
			<td><input  type="text" name="userInfo.tel" class="dfinput"/></td>
			<td>班级:</td>
			<td><input  type="text" name="userInfo.classes" class="dfinput"/></td>
		</tr>
		<tr class="odd">
			
			<td>学号:</td>
			<td><input  type="text" name="id" class="dfinput"/></td>
		</tr>
		
		<tr class="odd">
			<td>备注信息:</td>
			<td colspan="3">
				<textarea style="height:80px;width:100%" name="userInfo.personalRemarks" ></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit"  value="提交"></input>
			</td>
		</tr>	
	</table>

</div>

</div>
    
    <!-- <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>  -->
	</form>
</body>
</html>
