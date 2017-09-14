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

                <title>校园论坛</title>

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
                <!-- End of Header -->


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
                                                                <ul class="articles">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">25 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                                                                <span class="like-count">66</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">15</span>
                                                                        </li>
                                                                        <li class="article-entry video">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">8</span>
                                                                        </li>
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                                <span class="like-count">6</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">2</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">21 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">3</span>
                                                                        </li>
                                                                </ul>
                                                        </section>

                                                        <section class="span4 articles-list">
                                                                <h3>师生问答</h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">25 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                                                                <span class="like-count">66</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">25 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                                <span class="like-count">18</span>
                                                                        </li>
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">25 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                                                <span class="like-count">7</span>
                                                                        </li>
                                                                        <li class="article-entry video">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                                                <span class="like-count">7</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">15</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Theme Development">Theme Development</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                </ul>
                                                        </section>
                                                </div>

                                                <div class="row home-listing-area">
                                                        <div class="span8">
                                                                <h2>校园生活</h2>
                                                        </div>
                                                </div>

                                                <div class="row separator">

                                                        <section class="span4 articles-list">
                                                                <h3><a href="bbs_single.html">WordPress for Beginners</a> <span>(4)</span></h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress for Beginners">WordPress for Beginners</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress for Beginners">WordPress for Beginners</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress for Beginners">WordPress for Beginners</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">21 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress for Beginners">WordPress for Beginners</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                </ul>
                                                        </section>

                                                        <section class="span4 articles-list">
                                                                <h3><a href="bbs_single.html">Designing in WordPress</a> <span>(4)</span></h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">25 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                                                <span class="like-count">7</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">21 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                </ul>
                                                        </section>

                                                </div>

                                                <div class="row separator">

                                                        <section class="span4 articles-list">
                                                                <h3><a href="bbs_single.html">Theme Development</a> <span>(4)</span></h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Theme Development">Theme Development</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Theme Development">Theme Development</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Theme Development">Theme Development</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">21 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Theme Development">Theme Development</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                </ul>
                                                        </section>

                                                        <section class="span4 articles-list">

                                                                <h3><a href="bbs_single.html">Website Dev</a> <span>(4)</span></h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">15</span>
                                                                        </li>
                                                                        <li class="article-entry video">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">8</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">2</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">题目</a></h4>
                                                                                <span class="article-meta">21 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Website Dev">Website Dev</a></span>
                                                                                <span class="like-count">3</span>
                                                                        </li>
                                                                </ul>
                                                        </section>

                                                </div>

                                                <div class="row separator">

                                                        <section class="span4 articles-list">
                                                                <h3><a href="bbs_single.html">WordPress Plugins</a> <span>(4)</span></h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry video">
                                                                                <h4><a href="bbs_single.html">Using Video</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                                                <span class="like-count">7</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">Photoblogs and Galleries</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                                                <span class="like-count">2</span>
                                                                        </li>
                                                                        <li class="article-entry video">
                                                                                <h4><a href="bbs_single.html">Plugin Resources</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">Managing Plugins</a></h4>
                                                                                <span class="article-meta">21 Feb, 2013 in <a href="bbs_single.html" title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                </ul>
                                                        </section>

                                                        <section class="span4 articles-list">
                                                                <h3><a href="bbs_single.html">Advanced Techniques</a> <span>(4)</span></h3>
                                                                <ul class="articles">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">Using Javascript</a></h4>
                                                                                <span class="article-meta">25 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                                <span class="like-count">18</span>
                                                                        </li>
                                                                        <li class="article-entry video">
                                                                                <h4><a href="bbs_single.html">Editing Files</a></h4>
                                                                                <span class="article-meta">24 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                                <span class="like-count">1</span>
                                                                        </li>
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="bbs_single.html">Importing Content</a></h4>
                                                                                <span class="article-meta">23 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                                <span class="like-count">0</span>
                                                                        </li>
                                                                        <li class="article-entry image">
                                                                                <h4><a href="bbs_single.html">WordPress in Your Language</a></h4>
                                                                                <span class="article-meta">22 Feb, 2013 in <a href="bbs_single.html" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                                <span class="like-count">6</span>
                                                                        </li>
                                                                </ul>
                                                        </section>
                                                </div>

                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">活跃学生</h3>
                                                                <p class="intro">Need more support? If you did not found an answer, contact us for further help.</p>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <div class="quick-links-widget">
                                                                <h3 class="title">活跃小组</h3>
                                                                <ul id="menu-quick-links" class="menu clearfix">
                                                                        <li><a href="index-2.html">Home</a></li>
                                                                        <li><a href="articles-list.html">Articles List</a></li>
                                                                        <li><a href="faq.html">FAQs</a></li>
                                                                        <li><a href="contact.html">Contact</a></li>
                                                                </ul>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <h3 class="title">标签</h3>
                                                        <div class="tagcloud">
                                                                <a href="#" class="btn btn-mini">basic</a>
                                                                <a href="#" class="btn btn-mini">beginner</a>
                                                                <a href="#" class="btn btn-mini">blogging</a>
                                                                <a href="#" class="btn btn-mini">colour</a>
                                                                <a href="#" class="btn btn-mini">css</a>
                                                                <a href="#" class="btn btn-mini">date</a>
                                                                <a href="#" class="btn btn-mini">design</a>
                                                                <a href="#" class="btn btn-mini">files</a>
                                                                <a href="#" class="btn btn-mini">format</a>
                                                                <a href="#" class="btn btn-mini">header</a>
                                                                <a href="#" class="btn btn-mini">images</a>
                                                                <a href="#" class="btn btn-mini">plugins</a>
                                                                <a href="#" class="btn btn-mini">setting</a>
                                                                <a href="#" class="btn btn-mini">templates</a>
                                                                <a href="#" class="btn btn-mini">theme</a>
                                                                <a href="#" class="btn btn-mini">time</a>
                                                                <a href="#" class="btn btn-mini">videos</a>
                                                                <a href="#" class="btn btn-mini">website</a>
                                                                <a href="#" class="btn btn-mini">wordpress</a>
                                                        </div>
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
                                                                Copyright © 2013. All Rights Reserved by KnowledgeBase.Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
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