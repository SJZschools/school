<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                                                <li><a href="index">首页</a></li>
                                                                <li><a href="bbs_home">校园论坛</a></li>
                                                                <li><a href="bbs_post">发帖</a></li>
                                                                <li><a href="bbs_self">个人信息</a></li>
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

                                                <article class=" type-post format-standard hentry clearfix">

                                                        <h1 class="post-title">${bbs.bssTitle }</h1>

                                                        <div class="post-meta clearfix">
                                                                <span class="date"><fmt:formatDate value="${bbs.creatTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                                                <span class="category"><a href="#" title="View all posts in Server &amp; Database">${bbs.user.nickname }</a></span>
                                                                <span class="comments"><a href="#" title="Comment on Integrating WordPress with Your Website">${bbs.bcount }</a></span>
                                                                <span class="like-count">${bbs.recount }</span>
                                                        </div><!-- end of post meta -->

                                                        <blockquote><p>
                                                        	${bbs.bssContext}
                                                        </p></blockquote>

                                                </article>

                                                <div class="like-btn">
                                                        <form id="like-it-form" action="#" method="post">
                                                                <span class="like-it" id="${bbs.bssId }">
                                                               		${bbs.recount }
                                                                </span>
                                                        </form>

                                                        <span class="tags">
                                                                <strong>Tags:&nbsp;&nbsp;</strong>${bbs.bssClass }</a>
                                                        </span>

                                                </div>

                                                <section id="comments">
														<ol class="commentlist">

                                                                <li class="comment even thread-even depth-1" id="li-comment-2">
                                                                        <article id="comment-2">

                                                                                <c:forEach items="${allList}" var="rl" varStatus="status">
                                                                                     <div class="comment-meta">
																							
                                                                                             <h5 class="author">
                                                                                                     <cite class="fn">${rl.reply.user.nickname }</cite>
                                                                                                     - <a class="comment-reply-link" href="#pinglun">Reply</a>
                                                                                             </h5>

                                                                                             <p class="date">
                                                                                                     <a href="#">
                                                                                                             <fmt:formatDate value="${rl.reply.replyTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
                                                                                                     </a>
                                                                                             </p>

                                                                                     </div><!-- end .comment-meta -->

                                                                                     <div class="comment-body">
                                                                                             <p>${rl.reply.replyTxt }</p>
                                                                                     </div><!-- end of comment-body -->
                                                                                    	<ul class="children">

			                                                                                <li class="comment byuser comment-author-saqib-sarwar bypostauthor odd alt depth-2" id="li-comment-3">
		                                                                                        <article id="comment-3">
																									<c:forEach items="${rl.boardList}" var="bd" varStatus="status">
				                                                                                     <div class="comment-meta">
				
				                                                                                             <h5 class="author">
				                                                                                                     <cite class="fn">${bd.user.nickname }</cite>
				                                                                                             </h5>
				
				                                                                                             <p class="date">
				                                                                                                     <a href="#">
				                                                                                                             <fmt:formatDate value="${bd.responseTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
				                                                                                                     </a>
				                                                                                             </p>
				
				                                                                                     </div><!-- end .comment-meta -->
				
				                                                                                     <div class="comment-body">
				                                                                                             <p>${bd.responseTxt }</p>
				                                                                                     </div><!-- end of comment-body -->
																									 </c:forEach>
		                                                                                        </article><!-- end of comment -->
			                                                                                </li>
			                                                                       		 </ul>
                                                                                 </c:forEach>

                                                                        </article><!-- end of comment -->

                                                                        
                                                                </li>
                                                        </ol>

                                                        <div id="respond">

                                                                <h3>评论</h3>

                                                                <div class="cancel-comment-reply">
                                                                        <a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Click here to cancel reply.</a>
                                                                </div>


                                                                <form id="pinglun" action="#" method="post" id="commentform">


                                                                        <div>
                                                                                <textarea class="span8" name="comment" id="comment" cols="58" rows="10"></textarea>
                                                                        </div>
																		
                                                                        <div>
                                                                                <input class="btn" name="submit" type="submit" id="submit"  value="提交">
                                                                        </div>

                                                                </form>

                                                        </div>

                                                </section><!-- end of comments -->

                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">${bbs.user.nickname }</h3>
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
                                                                Copyright © 2013. All Rights Reserved by KnowledgeBase.Collect from <a href="http://www.cssmoban.com/" title="达内校园" target="_blank">达内校园</a>
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
