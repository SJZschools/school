<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="base.jsp"%>
<c:set var="nowPage1" value="1"/>
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

<title>校园论坛</title>

<link rel="shortcut icon" href="${ctx}/images/favicon.png" />
<link rel="stylesheet" href="${ctx}/css/templatemo-style.css">



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
							<li><a href="${ctx}/bbs_home/${nowPage1}">校园论坛</a></li>
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
							<c:forEach items="${bbsList}" var="b" varStatus="status">
							<ul class="articles">
								<li class="article-entry standard">
									<h4>
										<a href="${ctx}/bbs_single?bssId=${b.bssId }">${b.bssTitle }</a>
									</h4> 
									<span class="article-meta">
										<fmt:formatDate value="${b.creatTime }" pattern="yyyy-MM-dd HH:mm:ss"/> in <a
										href="${ctx}/bbs_single?bssId=${b.bssId }"
										title="View all posts in Server &amp; Database">${b.user.nickname }
										</a>${b.bssClass }</span> <span class="like-count">${b.recount }</span>
								</li>
							</ul>
							</c:forEach>
						</section>
						
						

						<section class="span4 articles-list">
							<h3>最新校帖</h3>
							<c:forEach items="${bbsListT}" var="b" varStatus="status">
							<ul class="articles">
								<li class="article-entry standard">
									<h4>
										<a href="${ctx}/bbs_single?bssId=${b.bssId }">${b.bssTitle }</a>
									</h4> 
									<span class="article-meta">
										<fmt:formatDate value="${b.creatTime }" pattern="yyyy-MM-dd HH:mm:ss"/> in <a
										href="${ctx}/bbs_single?bssId=${b.bssId }"
										title="View all posts in Server &amp; Database">${b.user.nickname }
										</a></span> <span class="like-count">${b.recount }</span>
								</li>
							</ul>
							</c:forEach>
							
							
						</section>
					</div>

					<div class="row home-listing-area">
						<div class="pagin" style="font-size:16px;color:black">
					    	共有[${page.allCount }]条记录,&nbsp共[${page.allPage }]页,&nbsp当前页[${page.nowPage }]&nbsp&nbsp
							<a  class="page" href="${ctx}/bbs_home/${nowPage1}" style="font-size:16px;color:red">首页</a>&nbsp
							<a  class="page" href="${ctx}/bbs_home/${page.prevPage}" style="font-size:16px;color:red">上一页</a>&nbsp 
						
							<c:forEach items="${page.pageList }" var="pagelist">
								<a class="page" href="${ctx}/bbs_home/${pagelist }" style="font-size:16px;color:red">[${pagelist }]</a>
							</c:forEach>
							&nbsp   
							<a class="page"  href="${ctx}/bbs_home/${page.nextPage}" style="font-size:16px;color:red">下一页</a>&nbsp
							<a class="page"  href="${ctx}/bbs_home/${page.allPage}" style="font-size:16px;color:red">尾页</a>&nbsp
				    	</div>
					</div>
				</div>
				<!-- end of page content -->


				<!-- start of sidebar -->
				<aside class="span4 page-sidebar">

					<section class="widget"><h3 class="title">相关网站</h3>
                            <ul>
                                    <li><a href="https://www.oracle.com/index.html" >Oracle</a><li>
									<li><a href="http://projects.spring.io/spring-boot/" >SpringBoot</a><li>
									<li><a href="http://maven.apache.org/" >Maven</a><li>
									<li><a href="https://www.eclipse.org/downloads/" >Eclipse</a><li>
									<li><a href="http://tomcat.apache.org/" >Tomcat</a></li>
                            </ul>
                    </section>
					<section class="widget"><h3 class="title">联系我们</h3>
                            <ul>
                                <li><a href="http://wpa.qq.com/msgrd?v=3&uin=378674193&site=qq&menu=yes">联系QQ</a></li>
                				<li><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=g7K2s7W2s7q7sbHD8vKt4Ozu">发送邮件</a></li>
                            </ul>
                    </section>
					

				
					<section class="widget">
						<h3 class="title">标签</h3>
						<div class="tagcloud">
							<a href="${ctx}/bbs_home?bssClass=java" class="btn btn-mini">java</a>
							<a href="${ctx}/bbs_home?bssClass=css" class="btn btn-mini">css</a>
							<a href="${ctx}/bbs_home?bssClass=net" class="btn btn-mini">net</a>
						</div>
					</section>



				</aside>
				<!-- end of sidebar -->
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