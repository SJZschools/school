<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="base.jsp"%>
<c:set var="nowPage1" value="1"/>

<!doctype html>
        <!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
        <!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
        <!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
        <!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
        <head>
                <!-- META TAGS -->
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                <title>校园动态</title>

                <link rel="shortcut icon" href="${ctx}/images/favicon.png" />

                <!-- Style Sheet-->
                <link rel="stylesheet" href="${ctx}/style.css"/>
                <link rel='stylesheet' id='bootstrap-css-css'  href='${ctx}/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='responsive-css-css'  href='${ctx}/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='pretty-photo-css-css'  href='${ctx}/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
                <link rel='stylesheet' id='main-css-css'  href='${ctx}/css/main5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='custom-css-css'  href='${ctx}/css/custom5152.html?ver=1.0' type='text/css' media='all' />
				<link rel="stylesheet" href="${ctx}/css/fontAwesome.css">
		        
				
                <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
                <!--[if lt IE 9]>
                <script src="${ctx}/js/html5.js"></script>
                <![endif]-->
                
                
		<script type="text/javascript">
			
		</script>		
		
        </head>

        <body>
				
                <!-- Start of Header -->
                <div class="header-wrapper">
                        <header>
                                <div class="container">
								

                                        <div class="logo-container">
                                                <!-- Website Logo -->                                                
                                                        <img src="${ctx}/images/logo.png" alt="Knowledge Base Theme">                                                
                                                <span class="tag-line"></span>
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

                <!-- Start of Search Wrapper -->
                <!-- <div class="search-area-wrapper">
                        
                </div> -->
                <!-- End of Search Wrapper -->
                <div class="copyrights"><a href="#" title=""></a></div>

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                <!-- Basic Home Page Template -->
                                                <div class="row separator">
                                                        <section class="span4 articles-list">
                                                               <h3><font color="green">最新动态 NEW</font></h3>
                                                               <c:forEach items="${dynaList}" var="dy" >
                                                                <ul class="articles">
                                                                	<li class="article-entry standard">
                                                                                <h4><a href="${ctx }/lifeSingle?dynamicId=${dy.dynamicId}">${dy.dynamicTitle}</a></h4>
                                                                                <span class="article-meta"><fmt:formatDate value="${dy.dynamicTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                                                                <span><a href="${ctx }/lifeSingle?dynamicId=${dy.dynamicId}" title="View">
                                                                                	${ fn:length(dy.dynamicContent) >20 ? fn:substring(dy.dynamicContent ,0,20) : dy.dynamicContent } ${ fn:length(dy.dynamicContent ) >20 ? '...':''}
                                                                                </a></span>
                                                                                <span class="like-count">${dy.rcount}</span>
                                                                    </li>     
                                                                </ul>
                                                                </c:forEach>                                                                
                                                        </section> 														

                                                        <section class="span4 articles-list">
                                                                <h3><font color="red">最热动态 HOT</font></h3>
                                                                <c:forEach items="${dyList}" var="dy" >
                                                                <ul class="articles">
                                                                	<li class="article-entry standard">
                                                                                <h4><a href="${ctx }/lifeSingle?dynamicId=${dy.dynamicId}">${dy.dynamicTitle }</a></h4>
                                                                                <span class="article-meta"><fmt:formatDate value="${dy.dynamicTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                                                                <span><a href="${ctx }/lifeSingle?dynamicId=${dy.dynamicId}" title="View">
																					${ fn:length(dy.dynamicContent) >20 ? fn:substring(dy.dynamicContent ,0,20) : dy.dynamicContent } ${ fn:length(dy.dynamicContent ) >20 ? '...':''}
																				</a></span>
                                                                                <span class="like-count">${dy.rcount}</span>
                                                                    </li>     
                                                                </ul>
                                                                </c:forEach> 
                                                        </section>  
													   
                                                </div>
                                                
                                                <div class="pagin" style="font-size:10px;color:black">
												    	共有[${page.allCount }]条记录,&nbsp共[${page.allPage }]页,&nbsp当前页[${page.nowPage }]&nbsp&nbsp
														<a  class="page" href="${ctx}/lifeHome/${nowPage1}" style="font-size:10px;color:red">首页</a>&nbsp
														<a  class="page" href="${ctx}/lifeHome/${page.prevPage}" style="font-size:10px;color:red">上一页</a>&nbsp 
													
														<c:forEach items="${page.pageList }" var="pagelist">
															<a class="page" href="${ctx}/lifeHome/${pagelist }" style="font-size:10px;color:red">[${pagelist }]</a>
														</c:forEach>
														&nbsp   
														<a class="page"  href="${ctx}/lifeHome/${page.nextPage}" style="font-size:10px;color:red">下一页</a>&nbsp
														<a class="page"  href="${ctx}/lifeHome/${page.allPage}" style="font-size:10px;color:red">尾页</a>&nbsp
												    </div>
                                                
                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">排忧解难工作小组</h3>
                                                                <p class="intro">没有找到您感兴趣的资讯？请联系我们以帮助您解决需求。</p>
                                                                <ul class="social-icons">
									                            <i><a href="http://wpa.qq.com/msgrd?v=3&uin=378674193&site=qq&menu=yes"><i class="fa fa-twitter">联系QQ</i></a></i>
									                            <i><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=g7K2s7W2s7q7sbHD8vKt4Ozu"><i class="fa fa-twitter">发送邮件</i></a></i>
									                            </ul>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <div class="quick-links-widget">
                                                                <h3 class="title">快速入口</h3>
                                                                <ul id="menu-quick-links" class="menu clearfix">
                                                                        <li><a href="${ctx}/index.html">首页</a></li>
                                                                        <li><a href="${ctx}${nowPage1}">动态首页</a></li>
                                                                        <li><a href="${ctx}/bbs_home.html">论坛首页</a></li>
                                                                        <li><a href="http://www.tmooc.cn/">学习资料</a></li>
                                                                </ul>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <h3 class="title">选择您感兴趣的动态分类</h3>
                                                        <div class="tagcloud">
                                                                <a href="#" class="btn btn-mini">全部</a>
                                                                <a href="#" class="btn btn-mini">达内官方</a>
                                                                <a href="#" class="btn btn-mini">学习</a>
                                                                <a href="#" class="btn btn-mini">工作</a>
                                                                <a href="#" class="btn btn-mini">生活</a>
                                                                <a href="#" class="btn btn-mini">就业</a>
                                                                <a href="#" class="btn btn-mini">JAVA</a>
                                                                <a href="#" class="btn btn-mini">C++</a>
                                                                <a href="#" class="btn btn-mini">UI</a>
                                                                <a href="#" class="btn btn-mini">Android</a>
                                                                <a href="#" class="btn btn-mini">Linux</a>
                                                                <a href="#" class="btn btn-mini">Unity</a>
                                                                <a href="#" class="btn btn-mini">.NET</a>
                                                                <a href="#" class="btn btn-mini">PHP</a>
                                                                
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