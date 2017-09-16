<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery.js"></script>

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

<title>用户新增</title>
</head>


<body>

	
    
    <div class="rightinfo">
	
	<div id="navMenubar" class="tools">
<ul class="toolbar">
	<li id="save"><span><img src="images/t01.png" /></span><a href="#" onclick="">保存</a></li>
	<li id="back"><span><img src="images/close.png" /></span><a href="#" onclick="">返回</a></li>
	
</ul>

    
    
<div id="tab1" class="tabson">


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd">
		<td>姓名:</td>
		<td><input  type="text" name="username" class="dfinput" /></td>
		<td>密码:</td>
		<td><input  type="password" name="password" class="dfinput"/></td>
	</tr>

	<tr class="odd">
		<td>所选学科:</td>
		<td>
			<select name="dept.deptId" style="width:121px">
				<option value="">---请选择----</option>
				
				<c:forEach items="${deptList}" var="d">
					<option value="${d.deptId}">${d.deptName}</option>
				</c:forEach>
			</select>
		</td>
		
	</tr>
	<tr class="odd">
		<td>身份证号:</td>
		<td><input type="text" name="userInfo.cardNo" class="dfinput"/>
		</td>
		
	</tr>
	<tr class="odd">
		<td>入学日期:</td>
		<td>
			<input type="text" style="width:121px;" name="userInfo.joinDate"
	   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" class="dfinput"/>
		</td>
		<td>毕业日期:</td>
		<td>
			<input type="text" style="width:121px;" name="userInfo.joinDate"
	   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" class="dfinput"/>
		</td>
	</tr>
	
	<tr class="odd">
		
		<td>性别:</td>
		<td>
			<input type="radio" name="userInfo.gender" value="男"/>男
			<input type="radio" name="userInfo.gender" value="女"/>女
			<input type="radio" name="userInfo.gender" value="其他"/>其他
		</td>
	</tr>
	<tr class="odd">
		
		<td>电话号码:</td>
		<td><input  type="text" name="userInfo.telephone" class="dfinput"/></td>
	</tr>
	<tr class="odd">
		<td>学员是否毕业:</td>
		<td>
			<select name="userInfo.userLevel" style="width:121px">
				<option value="1">在校</option>
				<option value="2">毕业</option>
				<option value="3">其他</option>
				
			</select>
		</td>
		<td>学号:</td>
		<td><input  type="text" name="userInfo.orderNo" class="dfinput"/></td>
	</tr>
	
	<tr class="odd">
		<td>备注信息:</td>
		<td colspan="3">
			<textarea style="height:80px;width:100%" name="userInfo.remark" ></textarea>
		</td>
	</tr>	
</table>
</div>
 
</div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
