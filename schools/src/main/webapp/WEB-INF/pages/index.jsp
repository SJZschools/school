<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="base.jsp"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>达内校园网</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">
        <link rel="stylesheet" href="${ctx}/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${ctx}/css/fontAwesome.css">
        <link rel="stylesheet" href="${ctx}/css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="${ctx}/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>

        <div class="overlay"></div>
        <section class="top-part">
          <video controls autoplay loop>
            <source src="videos/video.mp4" type="video/mp4">
            <source src="videos/video.ogg" type="video/ogg">
          Your browser does not support the video tag.
          </video>
        </section>
        
        <section class="cd-hero">
		<div class="image-icon"><img src="${ctx}/images/logo.png"></div>
          <div class="cd-slider-nav">
            <nav>
              <span class="cd-marker item-1"></span>
              <ul>
                <li class="selected"><a href="#0"><div class="image-icon"><img src="${ctx}/images/home-icon.png"></div><h6>首页</h6></a></li>
                <li><a href="#0"><div class="image-icon"><img src="${ctx}/images/about-icon.png"></div><h6>校内论坛</h6></a></li>
                <li><a href="#0"><div class="image-icon"><img src="${ctx}/images/featured-icon.png"></div><h6>校园新动态</h6></a></li>
                <li><a href="#0"><div class="image-icon"><img src="${ctx}/images/projects-icon.png"></div><h6>学习天地</h6></a></li>
                <li><a href="#0"><div class="image-icon"><img src="${ctx}/images/contact-icon.png"></div><h6>联系我们</h6></a></li>
              </ul>
            </nav> 
          </div> <!-- .cd-slider-nav -->

          <ul class="cd-hero-slider">

            <li class="selected">
              <div class="heading">
                <h1>达内校园网</h1>
                <span>校友论坛 · 技术分享 · 学习资料 · 名师解惑</span>
              </div>
              <div class="cd-full-width first-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content first-content">
                        <h4>一分钟了解达内校园网</h4>
                        <p>达内校园网旨在为达内学员提供技术交流平台</p>
                        <div class="primary-button">
                          <a href="login">开始探索</a>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

            <li>
              <div class="heading">
                <h1>论坛我们是认真的</h1>
                <span>一入论坛深似海，从此游戏是路人。</span> 
              </div>
              <div class="cd-half-width second-slide">   
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content second-content">
                        <div class="row">
                          <div class="col-md-7 left-image">
                            <img src="${ctx}/images/left-about-image.jpg">
                          </div>
                          <div class="col-md-5">
                            <div class="right-about-text">
                              <h4>帖子标题点击连接到帖子</h4>
                              <p>Fusce neque leo, dapibus sed imperdiet sed, vulputate sed purus. Nam eget justo in nibh facilisis rhoncus. Donec et risus non mauris lobortis convallis. Aliquam id urna quis ante blandit semper.</p>
                              <div class="primary-button">
                                <a href="bbs_home">连接到论坛</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-7">
                            <div class="left-about-text">
                              <h4>帖子标题点击连接到帖子</h4>
                              <p>Nam aliquam ultrices interdum. Vivamus metus mi, accumsan a tincidunt a, efficitur id felis. Vivamus non nibh malesuada, vestibulum nulla in, iaculis sem. Aenean tincidunt faucibus ipsum, ac aliquet nunc accumsan sed. Nulla sodales nunc sit amet libero egestas, ut interdum ex congue.</p>
                              <div class="primary-button">
                                <a href="bbs_home">连接到论坛</a>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-5 right-image">
                            <img src="${ctx}/images/right-about-image.jpg">
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>

            <li>
              <div class="heading">
                <h1>动态一手掌握</h1>
                <span>我们从不八卦，从不！！只是有时候耳朵比较长。</span> 
              </div>
              <div class="cd-half-width third-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content third-content">
                        <div class="row">
                          <div class="col-md-7 left-image">
                            <img src="${ctx}/images/left-feature-image.png"><!--动态获取图片资料-->
                          </div>
                          <div class="col-md-5">
                            <div class="right-feature-text">
                              <h4><a href="#">获取动态标题</a><em>获取时间</em></h4>
                              <p>获取事件文本内容获取事件文本内容获取事件文本内容获取事件文本获取事件文本内容获取事件文本获取事件文本内容获取事件文本大约60字<a>......详细查看</a></p>
                              <div class="feature-list">
                                <ul>
                                  <a href="#"><p>- 动态显示m</p></a>
                                 <a href="#"> <p>- 动态显示m</p></a>
                                 <a href="#"> <p>- 动态显示m</p></a>
                                 <a href="#"> <p>- 动态显示m</p></a>
                                  <a href="#"><p>- 动态显示m</p></a>
                                </ul>
                              </div>
                              <div class="primary-button">
                                <a href="life_home">查看更多链接到娱乐动态页面</a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>

            <li>
              <div class="heading">
                <h1>学习使我快乐</h1>
                <span>最好的心态就是我们只是小学生</span> 
              </div>
              <div class="cd-half-width fourth-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content fourth-content">
                        <div class="row">
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-01.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-01.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-02.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-02.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-03.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-03.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-04.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-04.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-05.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-05.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-06.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-06.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="${ctx}/images/item-07.jpg" data-lightbox="image-1"><img src="${ctx}/images/project-item-07.jpg"></a>
                          </div>
                          <div class="col-md-3 project-item">
                            <a href="life_index.html" ><img src="${ctx}/images/project-item-08.jpg"></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>

            <li>
              <div class="heading">
                <h1>关于我们</h1>
                <span>我们很年轻所以无所不能</span> 
              </div>
              <div class="cd-half-width fivth-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content fivth-content">
                        <div class="row">
                          <div class="col-md-4">
                            <div class="left-info">
                              <p>欢迎您对校园网的支持。本站很年轻希望亲可以多多提提意见。我们在用心聆听，等待您的到来
                              <br><br>
                              <em>工作时间：周一至周五<br>上午9点至下午6点</em>
                              </p>
                              <ul class="social-icons">
                                <i><a href="http://wpa.qq.com/msgrd?v=3&uin=378674193&site=qq&menu=yes"><i class="fa fa-twitter">联系QQ</i></a></i>
                                <i><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=g7K2s7W2s7q7sbHD8vKt4Ozu"><i class="fa fa-twitter">发送邮件</i></a></i>
                              </ul>
                            </div>
                          </div>
                          <div class="col-md-8">
                            <div class="row">
                              <form id="contact" action="" method="post">
                                <div class="col-md-6">
                                  <fieldset>
                                    <input name="name" type="text" class="form-control" id="name" placeholder="Your Name" required>
                                  </fieldset>
                                </div>
                                <div class="col-md-6">
                                  <fieldset>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email" required>
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <textarea name="message" rows="6" class="form-control" id="message" placeholder="Message" required></textarea>
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <button type="submit" id="form-submit" class="btn">发送意见</button>
                                  </fieldset>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>
          </ul> <!-- .cd-hero-slider -->
        </section> <!-- .cd-hero -->


       <footer>
    <p >Copyright &copy;  2017  Tedu  石家庄先天下教学中心   
                                
    |  - Design By JSD1706<a href="http://www.tedu.cn/" target="_blank" title="达内教育"> @达内教育</a></p>
	</footer>
    
        <script src="${ctx}/js/vendor/jquery-1.11.2.min.js"></script>
        <script>window.jQuery || document.write('<script src="${ctx}/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="${ctx}/js/vendor/bootstrap.min.js"></script>
        <script src="${ctx}/js/plugins.js"></script>
        <script src="${ctx}/js/main.js"></script>

    </body>
</html>