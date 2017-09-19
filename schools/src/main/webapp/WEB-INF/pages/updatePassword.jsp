<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="base.jsp"%>
<!doctype html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>更改密码</title>

<link rel="shortcut icon" href="${ctx}/images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" type="text/css" href="/css/upload/uploadImg.css" />
<link rel="stylesheet" href="style.css" />
<link rel='stylesheet' id='bootstrap-css-css'
	href='${ctx}/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='${ctx}/css/responsive5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='${ctx}/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='main-css-css'
	href='${ctx}/css/main5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='${ctx}/css/custom5152.html?ver=1.0' type='text/css' media='all' />
<script type="text/javascript" src="/js/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="/js/layer/layer.js"></script>
<style type="text/css"></style>
<script type="text/javascript">
var formObj = {
		/* 检查输入项是否为空 */
		"checkNull" : function(name, msg){
			var value = $("input[name='"+name+"']").val().trim();
			
			//清空之前的提示消息
			formObj.setMsg(name, "");
			
			if(value == ""){
				formObj.setMsg(name, msg);
				return false;
			}
			return true;
		},
		/* 设置错误提示消息 */
		"setMsg" : function(name, msg){
			$("#"+name+"_msg").html(msg);
			$("#"+name+"_msg").css("color", "red");
		},
		
		"checkForm" : function(){
			//1.非空校验
			var res1 = formObj.checkNull("oldPassword", "原密码不能为空") ;
			var res2 = formObj.checkNull("new1Password", "密码不能为空");
			var res3 = formObj.checkNull("new2Password", "确认密码不能为空");
			var res4 = formObj.checkNewPassword("Password", "两次密码不一致");
			return res1&&res2&&res3&&res4;
		},
			/* 检查两次密码是否一致 */
			"checkNewPassword" : function(name, msg){
				var psw1 = $("input[name='new1"+name+"']").val().trim();
				var psw2 = $("input[name='new2"+name+"']").val().trim();
				
				
				if(psw1 != "" && psw2 != ""){
					if(psw1 != psw2){
						formObj.setMsg("new2"+name, msg);
						return false;
					}
				}
				return true;
			},
			
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	<form name="icform" method="post" action="${ctx}/upPassword"
		enctype="multipart/form-data" onsubmit="return formObj.checkForm()">
		<!-- Start of Header -->
		<div class="header-wrapper">
			<header>
				<div class="container">
					<div class="logo-container">
						<!-- Website Logo -->
						<a href="index.html" title="Knowledge Base Theme"> <img
							src="${ctx}/images/logo.png" alt="Knowledge Base Theme">
						</a>
					</div>
					<!-- Start of Main Navigation -->
					<nav class="main-nav">
						<div class="menu-top-menu-container">
							<ul id="menu-top-menu" class="clearfix">
								<li><a href="index">首页</a></li>
								<li><a href="bbs_home">校园论坛</a></li>
								<li><a href="bbs_post">发帖</a></li>
								<li><a href="bbs_self">个人信息</a></li>
								<li><a href="#">退出</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</header>
		</div>

		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span8 page-content">
						<div class="row separator">
							<section class="span4 articles-list">
								<ul class="articles">
									<li class="article-entry standard">
										<h4>旧密码：</h4> <input type="password" name="oldPassword"
										class="password1" onblur="formObj.checkNull('oldPassword', '密码不为空')"
							onfocus="formObj.setMsg('oldPassword', '')"  value="${ param.oldPassword }" placeholder="oldPassword">
							<span id="oldPassword_msg"></span>
									</li>
									<br>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>新密码：</h4> <input type="password" name="new1Password"
										class="password2" onblur="formObj.checkNull('new1Password', '密码不能为空')"
							onfocus="formObj.setMsg('new1Password', '')"  value="${ param.new1Password }" placeholder="new1Password">
							<span id="new1Password_msg"></span>
									</li>
									<br>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>确认新密码：</h4> <input type="password" name="new2Password"
										class="password3" onblur="formObj.checkNull('new2Password', '密码不能为空')"
							onfocus="formObj.setMsg('new2Password', '')"  value="${ param.new2Password }" placeholder="new2Password">
							<span id="new2Password_msg"></span>
									</li>
								</ul>
								<br> <br> <br>
								<section class="widget">
									<input type="submit" value="提交" id="click"/>
								</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- End of Page Container -->
    <br> <br> <br> <br> <br> <br> <br>
	<!-- Start of Footer -->
	<footer id="footer-wrapper">

		<!-- Footer Bottom -->
		<div id="footer-bottom-wrapper">
			<div id="footer-bottom" class="container">
				<div class="row">
					<div class="span6">
						<p class="copyright">
							Copyright 2013. All Rights Reserved by KnowledgeBase.Collect from
							<a href="http://www.cssmoban.com/" title="达内校园" target="_blank">达内校园</a>
						</p>
					</div>
					<div class="span6">
						<!-- Social Navigation -->
						<ul class="social-nav clearfix">
							<li class="linkedin"><a target="_blank" href="#"></a></li>
							<li class="stumble"><a target="_blank" href="#"></a></li>
							<li class="google"><a target="_blank" href="#"></a></li>
							<li class="deviantart"><a target="_blank" href="#"></a></li>
							<li class="flickr"><a target="_blank" href="#"></a></li>
							<li class="skype"><a target="_blank" href="skype:#?call"></a></li>
							<li class="rss"><a target="_blank" href="#"></a></li>
							<li class="twitter"><a target="_blank" href="#"></a></li>
							<li class="facebook"><a target="_blank" href="#"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- End of Footer Bottom -->

	</footer>
	<!-- End of Footer -->

	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript' src='${ctx}/js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='${ctx}/js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='${ctx}/js/jflickrfeed.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.liveSearch.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.form.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='${ctx}/js/custom.js'></script>

</body>

</html>
