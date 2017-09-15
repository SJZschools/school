<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>发帖</title>

<link rel="shortcut icon" href="${ctx}/images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" type="text/css" href="/css/upload/uploadImg.css" />
<link rel="stylesheet" href="style.css" />
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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="${ctx}/js/html5.js"></script>
                <![endif]-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	<form name="icform" method="post">
		<!-- Start of Header -->
		<div class="header-wrapper">
			<header>
				<div class="container">


					<div class="logo-container">
						<!-- Website Logo -->
						<a href="index.html" title="Knowledge Base Theme"> <img
							src="${ctx}/images/logo.png" alt="Knowledge Base Theme">
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

						<!-- Basic Home Page Template -->
						<div class="row separator">
							<section class="span4 articles-list">
								<ul class="articles">
									<h3>发布新帖</h3>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>标题：</h4> <input type="text" name="bssTitle">
									</li>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>标签：</h4> <select name="bssClass">
											<option value="basic">basic</option>
											<option value="beginner">beginner</option>
											<option value="blogging">blogging</option>
											<option value="colour">colour</option>
											<option value="date">date</option>
											<option value="design">design</option>
											<option value="format">format</option>
											<option value="header">header</option>
											<option value="plugins">plugins</option>
											<option value="setting">setting</option>
											<option value="templates">templates</option>
											<option value="theme">theme</option>
											<option value="videos">videos</option>
											<option value="website">website</option>
											<option value="wordpress">wordpress</option>
									</select>
									</li>


									<!-- 上传图片 -->
									<div style="height: 500px;">
										<div class="img-box">
											<img src="" id="yushow" />
											<button class="btn-uploading" onclick="uploadBtn();">
												<i class="icon-uploading"></i>上传图片
											</button>
											<a class="shan" onclick="deleteImg();"><img
												src="/images/upload/shanI.gif"></a>
										</div>
										<input type="file" name="file" style="display: none;"
											onchange="previewImg(this);" id="upload" accept="image/*" />
									</div>
									<br>
									<br>
									<li class="article-entry standard">
										<h4>新帖内容：</h4> <textarea style="width: 600px; height: 200px"
											name="bssContext"></textarea>
									</li>
									<br>
									<br>
									<input type="submit" value="发表">
								</ul>
							</section>
						</div>
					</div>
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
								Copyright 2013. All Rights Reserved by KnowledgeBase.Collect
								from <a href="http://www.cssmoban.com/" title="达内校园"
									target="_blank">达内校园</a>
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
		<script type='text/javascript'
			src='${ctx}/js/prettyphoto/jquery.prettyPhoto.js'></script>
		<script type='text/javascript' src='${ctx}/js/jflickrfeed.js'></script>
		<script type='text/javascript' src='${ctx}/js/jquery.liveSearch.js'></script>
		<script type='text/javascript' src='${ctx}/js/jquery.form.js'></script>
		<script type='text/javascript' src='${ctx}/js/jquery.validate.min.js'></script>
		<script type='text/javascript' src='${ctx}/js/custom.js'></script>
	</form>
</body>
<script type="text/javascript">
	function uploadBtn() {
		$("#upload").click();
	}

	//图片预览
	function previewImg(imgFile) {
		console.log(imgFile);//这里打印出是整个input标签
		var extension = imgFile.value.substring(imgFile.value.lastIndexOf("."),
				imgFile.value.length);//扩展名
		extension = extension.toLowerCase();//把文件扩展名转换为小写
		if ((extension != '.jpg') && (extension != '.gif')
				&& (extension != '.jpeg') && (extension != '.png')
				&& (extension != '.bmp')) {
			layer.msg("对不起，系统仅支持标准格式的照片，请您调整格式后重新上传，谢谢 !");
			$(".btn-uploading").focus();//将焦点定位在文件上传的按钮上，可以直接按确定键再次触发
		} else {
			var path;//预览地址
			if (document.all) {//IE
				imgFile.select();
				path = document.selection.createRange().text;
			} else {//火狐，谷歌
				path = window.URL.createObjectURL(imgFile.files[0]);
			}
			$("#yushow").attr("src", path);//设置预览地址
			uploadImg(imgFile);
		}
	}

	//开始上传
	function uploadImg(imgFile) {
		//获取图片文件
		var file = imgFile.files[0];//文件对象
		var name = file.name;//图片名
		//var size = file.size;//图片大小
		//var type = file.type;//文件类型

		//检测浏览器对FileReader的支持
		if (window.FileReader) {
			var reader = new FileReader();
			reader.onload = function() {//异步方法,文件读取成功完成时触发
				var dataImg = reader.result;//文件一旦开始读取，无论成功或失败，实例的 result 属性都会被填充。如果读取失败，则 result 的值为 null ，否则即是读取的结果
				syncUpload(name, dataImg);
			};
			reader.readAsDataURL(file);//将文件读取为 DataURL
		} else {
			layer.msg("浏览器不支持H5的FileReader!");
		}
	}

	function syncUpload(name, dataImg) {
		var imgFile = dataImg.replace(/\+/g, "#wb#");//将所有“+”号替换为“#wb#”
		imgFile = imgFile.substring(imgFile.indexOf(",") + 1);//截取只保留图片的base64部分,去掉了data:image/jpeg;base64,这段内容
		imgFile = encodeURIComponent(imgFile);//把字符串作为 URI 组件进行编码。后台容器会自动解码一次
		name = encodeURIComponent(encodeURIComponent(name));//这里对中文参数进行了两次URI编码，后台容器自动解码了一次，获取到参数后还需要解码一次才能得到正确的参数内容
		var mydata = "method=uploadImg&imgFile=" + imgFile + "&imgName=" + name;
		$.ajax({
			url : "/UploadServlet",
			data : mydata,
			type : "post",
			dataType : "json",
			success : function(data) {
				if (data.state == 'ok') {
					document.getElementById("upload").value = "";//重置文件域
					layer.msg(data.msg);
				} else if (data.state == 'error') {
					layer.msg(data.msg);
				}
			}
		});
	}

	//删除图片
	function deleteImg() {
		$.ajax({
			url : "/UploadServlet",
			data : "method=deleteImg",
			type : "post",
			dataType : "json",
			success : function(data) {
				if (data.state == 'ok') {
					layer.msg(data.msg);
				} else if (data.state == 'error') {
					layer.msg(data.msg);
				}
			}
		});
	}
</script>
</html>
