<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="base.jsp"%>
<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${ctx}/css/templatemo-style.css">
<title>校园论坛</title>

<link rel="shortcut icon" href="${ctx}/images/favicon.png" />




<!-- Style Sheet-->
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


<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                 <script src="${ctx}/js/html5.js"></script></script>
                <![endif]-->
	
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
							<li><a href="${ctx}/bbs_home">校园论坛</a></li>
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

	<form name="icform" method="post">
	
	<!-- Start of Page Container -->
	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">

					<!-- Basic Home Page Template -->
					<div class="row separator">
						<section class="span4 articles-list">
							<h3>热门精贴</h3>
							<c:forEach items="${bbsListC}" var="bc" varStatus="status">
							<ul class="articles">
								<li class="article-entry standard">
									<h4>
										<a href="${ctx}/bbs_single?bssId=${bc.bssId }">${bc.bssTitle }</a>
									</h4> 
									<span class="article-meta">
										<fmt:formatDate value="${bc.creatTime }" pattern="yyyy-MM-dd HH:mm:ss"/> in <a
										href="${ctx}/bbs_single?bssId=${bc.bssId }"
										title="View all posts in Server &amp; Database">${bc.user.nickname }
										</a>${bc.bssClass }</span> <span class="like-count">${bc.recount }</span>
								</li>
							</ul>
							</c:forEach>
						</section>
					</div>

					<div class="row home-listing-area">
						
					</div>
				</div>
				<!-- end of page content -->

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
	<script type='text/javascript' src='${ctx}/js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='${ctx}/js/jflickrfeed.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.liveSearch.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.form.js'></script>
	<script type='text/javascript' src='${ctx}/js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='${ctx}/js/custom.js'></script>

</body>
</html>