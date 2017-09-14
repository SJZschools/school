<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="base.jsp"%>
<!doctype html>
        <!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
        <!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
        <!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
        <!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
        <head>
                <!-- META TAGS -->
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                <title>个人信息</title>

                <link rel="shortcut icon" href="${ctx}/images/favicon.png" />

                <!-- Style Sheet-->
                <link rel="stylesheet" href="style.css"/>
                <link rel='stylesheet' id='bootstrap-css-css'  href='${ctx}/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='responsive-css-css'  href='${ctx}/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='pretty-photo-css-css'  href='${ctx}/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
                <link rel='stylesheet' id='main-css-css'  href='${ctx}/css/main5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='custom-css-css'  href='${ctx}/css/custom5152.html?ver=1.0' type='text/css' media='all' />


                <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
                <!--[if lt IE 9]>
                <script src="${ctx}/js/html5.js"></script>
                <![endif]-->

        </head>

        <body>
                <!-- Start of Header -->
                <div class="header-wrapper">
                        <header>
                                <div class="container">


                                        <div class="logo-container">
                                                <!-- Website Logo -->
                                                 <a href="index.html"  title="Knowledge Base Theme">
                                                        <img src="${ctx}/images/logo.png" alt="Knowledge Base Theme">
                                                </a>
                                        </div>


                                        <!-- Start of Main Navigation -->
                                        <nav class="main-nav">
                                                <div class="menu-top-menu-container">
                                                        <ul id="menu-top-menu" class="clearfix">
                                                               <li><a href="index.html">首页</a></li>
                                                                <li><a href="bbs_home.html">校园论坛</a></li>
                                                                <li><a href="bbs_post.html">发帖</a></li>
                                                                <li><a href="bbs_self.html">个人信息</a>
                                                                </li>
                                                                <li><a href="#">退出</a></li>
                                                        </ul>
                                                </div>
                                        </nav>
                                        <!-- End of Main Navigation -->
										
                                </div>
                        </header>
                </div>
				<!-- Start of Search Wrapper -->
                <div class="search-area-wrapper">
						<br><br><br>
                        <div class="search-area container">
                                <h3 class="search-header">个人信息</h3>
                        </div>
                </div>
                <!-- End of Search Wrapper -->
				
				<form id="self" name="" action="" method="" onSubmit="">
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
																	<li class="article-entry standard">
																			<h4>姓名：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>性别：</h4><br>
																			&nbsp;&nbsp;&nbsp;&nbsp;
																			<input type="radio" name="gender" checked="checked">男
																			&nbsp;&nbsp;&nbsp;&nbsp;
																			<input type="radio" name="gender" >女
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>出生日期：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>爱好：</h4><br>
																			<input type="checkbox">篮球
																			<input type="checkbox">羽毛球
																			<input type="checkbox">读书
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>入学日期：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>手机：</h4>
																			<input type="text">
																	</li>
															</ul>
                                                        </section>
														
														<section class="span4 articles-list">
                                                                <ul class="articles">
																	<li class="article-entry standard">
																			<h4>血型：</h4><br>
																			&nbsp;&nbsp;&nbsp;&nbsp;
																			<input type="radio" name="blood" checked="checked">O
																			&nbsp;&nbsp;&nbsp;&nbsp;
																			<input type="radio" name="blood" >A
																			&nbsp;&nbsp;&nbsp;&nbsp;
																			<input type="radio" name="blood" >B
																			&nbsp;&nbsp;&nbsp;&nbsp;
																			<input type="radio" name="blood" >AB
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>出生地：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>居住地：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>职业：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>邮箱：</h4>
																			<input type="text">
																	</li>
																	<br>
																	<li class="article-entry standard">
																			<h4>QQ：</h4>
																			<input type="text">
																	</li>
															</ul>
                                                        </section>
														
														
												</div>
										</div>
<!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
															<h4>个性签名：</h4>
															<textarea style="width:300px; height:180px;"></textarea>
                                                </section>
												<br>

                                                <section class="widget">
                                                        	<h4>个人备注：</h4>
															<textarea style="width:300px; height:180px;"></textarea>
                                                </section>
												
												<section class="widget">
													<input type="submit" value="修改"/>
                                                </section>

                                        </aside>
                                        <!-- end of sidebar -->
                                </div>
                        </div>
                </div>
				
				</form>
                <!-- End of Page Container -->
				
				<!-- Start of Footer -->
                <footer id="footer-wrapper">

                        <!-- Footer Bottom -->
                        <div id="footer-bottom-wrapper">
                                <div id="footer-bottom" class="container">
                                        <div class="row">
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
                <script type='text/javascript' src='${ctx}/js/prettyphoto/jquery.prettyPhoto.js'></script>
                <script type='text/javascript' src='${ctx}/js/jflickrfeed.js'></script>
				<script type='text/javascript' src='${ctx}/js/jquery.liveSearch.js'></script>
                <script type='text/javascript' src='${ctx}/js/jquery.form.js'></script>
                <script type='text/javascript' src='${ctx}/js/jquery.validate.min.js'></script>
                <script type='text/javascript' src='${ctx}/js/custom.js'></script>

        </body>
</html>

