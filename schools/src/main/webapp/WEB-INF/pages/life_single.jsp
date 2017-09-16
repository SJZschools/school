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

                <title>详细信息</title>

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
                                                <a href="index.html"  title="Knowledge Base Theme">
                                                        <img src="${ctx}/images/logo.png" alt="Knowledge Base Theme">
                                                </a>
                                        </div>


                                        <!-- Start of Main Navigation -->
                                        <nav class="main-nav">
                                                <div class="menu-top-menu-container">
                                                        <ul id="menu-top-menu" class="clearfix">
                                                                <li><a href="index.html">首页</a></li>
                                                                <li><a href="lifeHome.html">校园动态</a></li>                                                                
                                                                <li><a href="self.html">个人信息</a></li>
                                                                <li><a href="login.html">退出</a></li>
                                                        </ul>
                                                </div>
                                        </nav>
                                        <!-- End of Main Navigation -->

                                </div>
                        </header>
                </div>
                <!-- End of Header -->

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                

                                                <article class=" type-post format-standard hentry clearfix">

                                                        <h1 class="post-title"><a href="#">${dynamicTitle}</a></h1>

                                                        <div class="post-meta clearfix">
                                                                <span class="date">更新于：2017-9-16 08:26:35</span>                                                                                                                            
                                                                <span class="like-count">${dy.rcount}</span>
                                                        </div><!-- end of post meta -->

                                                        <blockquote><p>
                                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod 
                                                        tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
                                                        quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo 
                                                        consequat.
                                                        </p></blockquote>
                                                </article>

                                                <div class="like-btn">
                                                        <form id="like-it-form" action="#" method="post">
                                                                <span class="like-it ">66</span>
                                                                <input type="hidden" name="post_id" value="99">
                                                                <input type="hidden" name="action" value="like_it">
                                                        </form>

                                                        <span class="tags">
                                                                <strong>标签:&nbsp;&nbsp;</strong><a href="#" rel="tag">JAVA</a>, <a href="#" rel="tag">达内官方</a>, <a href="http://knowledgebase.inspirythemes.com/tag/website/" rel="tag">学习</a>
                                                        </span>

                                                </div>

                                                <section id="comments">
                                                        <div id="respond"> 
                                                                <div class="cancel-comment-reply">
                                                                        <a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Click here to cancel reply.</a>
                                                                </div>                                                               
                                                        </div>

                                                </section><!-- end of comments -->

                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">排忧解难工作小组</h3>
                                                                <p class="intro">内容不够详尽？请<a href="index.html">联系我们</a>以帮助您解决需求。</p>
                                                        </div>
                                                </section>


                                                <section class="widget">
                                                        <h3>最热动态 HOT</h3>
                                                                <c:forEach items="${dyList}" var="dy" >
                                                                <ul class="articles">
                                                                	<li class="article-entry standard">
                                                                                <h4><a href="life_single.html">${dy.dynamicTitle }</a></h4>
                                                                                <span class="article-meta">${dy.dynamicTime}</span>
                                                                                <span><a href="life_single.html" title="View">${dy.dynamicContent}</a></span>
                                                                                <span class="like-count">${dy.rcount}</span>
                                                                    </li>     
                                                                </ul>
                                                        </c:forEach>
                                                </section>



                                                <section class="widget"><h3 class="title">Categories</h3>
                                                        <ul>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Advanced Techniques</a> </li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Designing in WordPress</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress for Beginners</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress Plugins</a></li>
                                                        </ul>
                                                </section>

                                                <section class="widget">
                                                        <h3 class="title">Recent Comments</h3>
                                                        <ul id="recentcomments">
                                                                <li class="recentcomments"><a href="#" rel="external nofollow" class="url">John Doe</a> on <a href="#">Integrating WordPress with Your Website</a></li>
                                                                <li class="recentcomments">saqib sarwar on <a href="#">Integrating WordPress with Your Website</a></li>
                                                                <li class="recentcomments"><a href="#" rel="external nofollow" class="url">John Doe</a> on <a href="#">Integrating WordPress with Your Website</a></li>
                                                                <li class="recentcomments"><a href="#" rel="external nofollow" class="url">Mr WordPress</a> on <a href="#">Installing WordPress</a></li>
                                                        </ul>
                                                </section>

                                        </aside>
                                        <!-- end of sidebar -->
                                </div>
                        </div>
                </div>
                <!-- End of Page Container -->

                <!-- Start of Footer -->
                <footer id="footer-wrapper">
                        

                        <!-- Footer Bottom -->
                        <div id="footer-bottom-wrapper">
                                <div id="footer-bottom" class="container">
                                        <div class="row">
                                                <div class="span6">
                                                        <p class="copyright">
                                                                Copyright &copy;  2017  Tedu  石家庄先天下教学中心              
    				|  - Design By JSD1706<a href="http://www.tedu.cn/" target="_blank" title="达内教育" style="color: #FFF"> @达内教育</a>
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
                <script type='text/javascript' src='${ctx}/js/prettyphoto/jquery.prettyPhoto.js'></script>
                <script type='text/javascript' src='${ctx}/js/jflickrfeed.js'></script>
                <script type='text/javascript' src='${ctx}/js/jquery.liveSearch.js'></script>
                <script type='text/javascript' src='${ctx}/js/jquery.form.js'></script>
                <script type='text/javascript' src='${ctx}/js/jquery.validate.min.js'></script>
                <script type='text/javascript' src='${ctx}/js/custom.js'></script>

        </body>
</html>
