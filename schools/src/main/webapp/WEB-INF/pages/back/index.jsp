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
<script type="text/javascript" src="${ctx}/js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="${ctx}/images/backimg/sun.png" alt="天气" /></span>
    <b>${user.username }早上好，欢迎使用信息管理系统</b>
    </div>
    
    <div class="welinfo">
    <span><img src="${ctx}/images/backimg/time.png" alt="时间" /></span>
           切换账号？<a href="/login">请点这里</a>
    </div>
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="${ctx}/images/backimg/ico01.png" /><p><a href="${ctx}/student/${nowPage }" >学生管理</a></p></li>
	<li><img src="${ctx}/images/backimg/ico01.png" /><p><a href="${ctx}/discuss/${nowPage }">论坛管理</a></p></li>
    <li><img src="${ctx}/images/backimg/ico04.png" /><p><a href="${ctx}/back/ScDynam">校园动态</a></p></li>
    <li><img src="${ctx}/images/backimg/ico05.png" /><p><a href="${ctx}/back/advice">学员反馈</a></p></li>
            
    </ul>
    
   <%--  <div class="ibox"><a class="ibtn"><img src="${ctx}/images/backimg/iadd.png" />添加新的快捷功能</a></div> --%>
    
    <div class="xline"></div>
    <div class="box"></div>
    
    
    
    <div class="xline"></div>
    
    
    </ul>
    
    
    </div>
</body>
</html>
