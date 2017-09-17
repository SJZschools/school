<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
<link href="${ctx }/css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx }/js/jquery.js"></script>



</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="backIndex">首页</a></li>
    <li><a href="student">学员管理</a></li>
   
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><span><img src="${ctx }/images/backimg/t01.png" /></span><a href="addBackStudent" target="rightFrame">添加</a></li>
        <li><span><img src="${ctx }/images/backimg/t03.png" /></span><a href="deleteBackStudent" target="rightFrame">删除</a></li>
        
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="${ctx }/images/backimg/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="selectAll" type="checkbox"  onclick="checkAll('studyId',this)"/></th>
        <th>学号<i class="sort"><img src="${ctx }/images/backimg/px.gif" /></i></th>
        <th>性别</th>
        <th>姓名</th>
        <th>籍贯</th>
        <th>班级</th>
        <th>入学时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        
        <c:forEach items="${userList }" var="user">
	        <tr>
	        <td><input name="studyId" id="id" type="checkbox" value="${user.id }" /></td>
	        <td>${user.id }</td>
	        <td>${user.userInfo.sex }</td>
	        <td>${user.username }</td>
	        <td>${user.userInfo.homeplace }</td>
	        <td>${user.userInfo.classes }</td>
	        <td><fmt:formatDate value="${user.userInfo.timeofenrollment }" pattern="yyyy-MM-dd"/></td>
	        <td> 
	        	 <a href="updateBackStudent/${user.id }"  class="update" >修改</a>
	        </td>
	        
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
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="${ctx }/images/backimg/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
