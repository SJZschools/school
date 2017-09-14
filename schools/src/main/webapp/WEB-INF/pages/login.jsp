<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="base.jsp"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>校园网内部登陆</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="${ctx}/css/loginreset.css">
        <link rel="stylesheet" href="${ctx}/css/loginsupersized.css">
        <link rel="stylesheet" href="${ctx}/css/loginstyle.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>用户登陆</h1>
            <form action="index.html" method="post">
                <input type="text" name="username" class="username" placeholder="Username">
                <input type="password" name="password" class="password" placeholder="Password">
                <button type="submit">登陆</button>
                <div class="error"><span>+</span></div>
            </form>
        </div>
        <!-- Javascript -->
        <script src="${ctx}/js/jquery-1.8.2.min.js"></script>
        <script src="${ctx}/js/supersized.3.2.7.min.js"></script>
        <script src="${ctx}/js/supersized-init.js"></script>
        <script src="${ctx}/js/scripts.js"></script>

    </body>

</html>

