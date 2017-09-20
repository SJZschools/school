<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="base.jsp"%>
<!doctype html>
<html lang="en-US">
<!--<![endif]-->
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>发帖</title>

<link rel="shortcut icon" href="${ctx}/images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="${ctx}/css/templatemo-style.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/upload/uploadImg.css" />
<link rel="stylesheet" href="${ctx}/style.css" />
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


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	
		<!-- Start of Header -->
		<div class="header-wrapper">
			<header>
				<div class="container">


					<div class="logo-container">
						<!-- Website Logo -->
						<a href="${ctx}/index.html" title="Knowledge Base Theme"> <img
							src="${ctx}/images/logo.png" alt="Knowledge Base Theme">
						</a>
					</div>


					<!-- Start of Main Navigation -->
					<nav class="main-nav">
						<div class="menu-top-menu-container">
							<ul id="menu-top-menu" class="clearfix">
								<li><a href="${ctx}/index">首页</a></li>
								<li><a href="${ctx}/bbs_home/">校园论坛</a></li>
								<li><a href="${ctx}/bbs_post">发帖</a></li>
									<c:if test="${userSession!=null }">
							<li><a href="${ctx}/bbs_self"><span style="color:red">${userSession.username}</span></a></li>
							<li><a href="${ctx}/loginout">退出</a></li>
							</c:if>
							</ul>
						</div>
					</nav>
					<!-- End of Main Navigation -->

				</div>
			</header>
		</div>
		<!-- End of Header -->
<form name="icform" method="post" action="${ctx}/savebbs" enctype="multipart/form-data" >
		<!-- Start of Page Container -->
		<div class="page-container">
			<div class="container">
				<div class="row">

					<!-- start of page content -->
					<div class="span8 page-content">

						<!-- Basic Home Page Template -->
						<div class="row separator">
							<section class="span4 articles-list">
								<ul class="articles">
									<h3>发布新帖</h3>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>标题：</h4> <input type="text" name="bssTitle"/>
									</li>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>标签：</h4> <select name="bssClass">
											<option value="basic">Java</option>
											<option value="beginner">Java大数据</option>
											<option value="blogging">UI</option>
											<option value="colour">PHP</option>
											<option value="date">C++</option>
											<option value="design">Linux</option>
											<option value="format">Android</option>
											<option value="header">ios</option>
											<option value="plugins">.NET</option>
											<option value="setting">网络营销</option>
											<option value="templates">网络工程</option>
											<option value="theme">软件测试</option>
											<option value="videos">嵌入式</option>
									</select>
									</li>


									<!-- 上传图片 -->
									<!-- 页面导航 -->
									<div class="page-header">
										<div class="page-title" style="padding-bottom: 5px">
											<ol class="breadcrumb">
											<li><input type="file" name="mFile" class="form-control" multiple="true" ></li>
										
												<li class="active">图片上传</li>
											</ol>
										</div>
										<div class="page-stats"></div>
									</div>
								
									
										
						</div>

						<br> <br>
						<li class="article-entry standard">
							<h4>新帖内容：</h4> <textarea style="width: 600px; height: 200px"
								name="bssContext"></textarea>
						</li> <br> <br> <input type="submit" value="发表">
						</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- End of Page Container -->
</form>
		<!-- Start of Footer -->
		<footer>
		    <p >Copyright &copy;  2017  Tedu  石家庄先天下教学中心   
		                                
		    |  - Design By JSD1706<a href="http://www.tedu.cn/" target="_blank" title="达内教育"> @达内教育</a></p>
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
