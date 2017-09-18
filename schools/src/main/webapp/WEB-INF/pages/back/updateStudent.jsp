<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="nowPage" value="1"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
<link href="${ctx }/css/backstyle.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx }/js/jquery-1.4.2.js"></script>

<script type="text/javascript">
			
		$(document).ready(function(){
			$("#submit").click(function(){
				
				var name = $("#name").val();
				var card = $("#card").val();
				var birthday = $("#birthday").val();
				var timeofenrollment = $("#timeofenrollment").val();
				var sex = $(".sex").val();
				var tel = $("#tel").val();
				var classes = $("#classes").val();
				var id = $("#id").val();
				var personalRemarks = $("#personalRemarks").val();
				/* */
			    if(confirm("您保存么？")){
					/* $.post("${ctx}/saveBackStudent",{"username":username,"userInfo.card":card,"userInfo.birthday":birthday,"userInfo.timeofenrollment":timeofenrollment,"userInfo.sex":sex,"userInfo.tel":tel,"userInfo.classes":classes,"id":id,"userInfo.personalRemarks":personalRemarks},function(result){
						if("true"==result){
							alert("修改成功");
							/* window.location.href="/student" 
						}
					}); */
			    	$.ajax({
				        url:"/saveDelBackStudent",
				        type:"post",
				        data:{"id":id,"name":name,"sex":sex,"timeofenrollment":timeofenrollment,"birthday":birthday,"classes":classes,"tel":tel,"personalRemarks":personalRemarks,"card":card},
				        dataType:"json",
				        success: function(result) {  
				        	var nowPage=1;
		                    window.location.href="${ctx}/student?nowPage="+nowPage;  
		                }  
				        
				    });  
			    }
				
			})
			
			
		});
	
		
	
	</script>


<title>用户修改</title>
</head>


<body>
	
	
    
    <div class="rightinfo"/>

	<div id="navMenubar" class="tools"/>
<ul class="toolbar">
	<li id="back"><span><img src="${ctx }/images/backimg/close.png" /></span><a href="${ctx }/student/${nowPage }" onclick="">返回</a></li>
	
</ul>

    
    
<div id="tab1" class="tabson">


<div class="eXtremeTable" >

	<table id="ec_table" class="tableRegion" width="98%" >
		<tr class="odd">
			<td>姓名:</td>
			<td><input id="name" type="text" name="name" class="dfinput" value="${userInfo.name}"/></td>
			
		</tr>
	
		<tr class="odd">
			
			
		</tr>
		<tr class="odd">
			<td>身份证号:</td>
			<td><input type="text" id="card" name="card" class="dfinput" value="${userInfo.card}"/>
			</td>
			
		</tr>
		<tr class="odd">
			<td>出生日期:</td>
			<td>
				<input type="text" id="birthday" style="width:121px;" name="birthday" value="<fmt:formatDate value="${userInfo.birthday}" pattern="yyyy-MM-dd"/>"
		   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" class="dfinput"/>
			</td>
			<td>入学日期:</td>
			<td>
				<input type="text" id="timeofenrollment" style="width:121px;" name="timeofenrollment" value="<fmt:formatDate value="${userInfo.timeofenrollment}" pattern="yyyy-MM-dd"/>"
		   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" class="dfinput"/>
			</td>
		</tr>
		
		<tr class="odd">
			
			<td>性别:</td>
			<td>
				<input type="radio" class="sex" name="sex" value="男" <c:if test="${userInfo.sex =='男'}">checked="checked"</c:if>/>男
				<input type="radio"  class="sex" name="sex" value="女" <c:if test="${userInfo.sex =='女'}">checked="checked"</c:if>/>女
				<input type="radio"  class="sex" name="sex" value="其他" <c:if test="${userInfo.sex =='其他'}">checked="checked"</c:if>/>其他
			</td>
		</tr>
		<tr class="odd">
			
			<td>电话号码:</td>
			<td><input  type="text" id="tel" name="tel" class="dfinput" value="${userInfo.tel }"/></td>
			<td>班级:</td>
			<td><input  type="text" id="classes" name="classes" class="dfinput" value="${userInfo.classes}"/></td>
		</tr>
		<tr class="odd">
			
			<td>学号:</td>
			<td><input  type="text" name="id" id="id" class="dfinput" value="${userInfo.id}"/></td>
		</tr>
		
		<tr class="odd">
			<td>备注信息:</td>
			<td colspan="3">
				<textarea style="height:80px;width:100%" id="personalRemarks" name="personalRemarks"  value="${userInfo.personalRemarks}"></textarea>
			</td>
		</tr>
		<tr>
			<td>
			<li id="save"><span><img src="${ctx }/images/backimg/t01.png" /></span><input id="submit" type="button"  value="保存"></input></li>
				
			</td>
		</tr>	
	</table>

</div>

</div>
    
    <!-- <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>  -->
	
</body>
</html>