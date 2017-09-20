<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                <link rel="stylesheet" href="${ctx}/css/templatemo-style.css">
                <link rel="stylesheet" href="${ctx}/style.css"/>
                <link rel='stylesheet' id='bootstrap-css-css'  href='${ctx}/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='responsive-css-css'  href='${ctx}/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='pretty-photo-css-css'  href='${ctx}/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
                <link rel='stylesheet' id='main-css-css'  href='${ctx}/css/main5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='custom-css-css'  href='${ctx}/css/custom5152.html?ver=1.0' type='text/css' media='all' />
		        <link rel="stylesheet" href="${ctx}/css/fontAwesome.css">

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
                                                <a href="${ctx}/index.html"  title="Knowledge Base Theme">
                                                        <img src="${ctx}/images/logo.png" alt="Knowledge Base Theme">
                                                </a>
                                        </div>

                                        <!-- Start of Main Navigation -->
                                        <nav class="main-nav">
                                                <div class="menu-top-menu-container">
                                                        <ul id="menu-top-menu" class="clearfix">
                                                                <li><a href="${ctx}/index.html">首页</a></li>
                                                                <li><a href="${ctx}/lifeHome/1.html">校园动态</a></li>                                                                
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

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                <article class=" type-post format-standard hentry clearfix">

                                                        <h1 class="post-title">${dynamic.dynamicTitle}</h1>

                                                        <div class="post-meta clearfix">
                                                        		<span class="date">更新于：<fmt:formatDate value="${dynamic.dynamicTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>                                                                
                                                                <span class="like-count">${dynamic.rcount}</span>
                                                        </div><!-- end of post meta -->
                                                        <blockquote><p>
                                                        ${dynamic.dynamicContent}
                                                        </p></blockquote>
                                                </article>

                                                <div class="like-btn">
                                                        <form id="like-it-form" action="#" method="post">
                                                                <span class="like-it ">${dynamic.rcount}</span>
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
                                                                <p class="intro">内容不够详尽？请联系我们以帮助您解决需求。</p>
                                                                <ul class="social-icons">
									                            <i><a href="http://wpa.qq.com/msgrd?v=3&uin=378674193&site=qq&menu=yes"><i class="fa fa-twitter">联系QQ</i></a></i>
									                            <i><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=g7K2s7W2s7q7sbHD8vKt4Ozu"><i class="fa fa-twitter">发送邮件</i></a></i>
									                            </ul>
                                                        </div>
                                                </section>


                                                <section class="widget">
                                                        <h3>最热动态 HOT</h3>  
                                                        
                                                        <marquee direction=up behavior=scroll scrollamount=5 onmouseover=this.stop() onmouseout=this.start()>
														<font face="宋体" size="2" >
														<c:forEach items="${hotList}" var="h">
														<img src="${ctx}/images/dz.png">
														<a href="${ctx}/lifeSingle?dynamicId=${h.dynamicId}" onfocus="changeStyle(this.id)">${h.dynamicTitle}</a></br></br>
														</c:forEach>
														</marquee>
                                                        
                                                </section>                                                
                                        </aside>
                                        <!-- end of sidebar -->
                                </div>
                        </div>
                </div>
                <!-- End of Page Container -->

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
