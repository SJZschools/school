<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
.demo{width:1300px;margin:20px auto;}
#l-map{height:700px;width:800px;float:left;border:1px solid #bcbcbc;}
#r-result{height:700px;width:230px;float:right;}
</style>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>

</head>
<body>

<div class="demo">

	<p style="height:60px;">输入城市：<input id="txtCity" type="text"/>  <button  onClick="getPoint()">获取坐标</button> 坐标：<input id="txtPoint" type="text"/></p>
	
	<div id="l-map"></div>
	<div id="r-result"></div>

</div>


<script type="text/javascript">
// 百度地图API功能

var map = new BMap.Map("l-map");            // 创建Map实例
	map.centerAndZoom(new BMap.Point(114.54071,38.050741),17);
	map.enableScrollWheelZoom();
	var local = new BMap.LocalSearch("全国", {
	  renderOptions: {
		map: map,
		panel : "r-result",
		autoViewport: true,
		selectFirstResult: false
	  }
	});
		map.addEventListener("click",function(e){
		
		document.getElementById("txtPoint").value=e.point.lng + "," + e.point.lat;
	});
 //向地图添加控件
    function addMapControl(){
      var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
      scaleControl.setUnit(BMAP_UNIT_METRIC);
      map.addControl(scaleControl);
      var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:0});
      map.addControl(navControl);
      var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
      map.addControl(overviewControl);
    }
	
function getPoint(){
	
    var city = document.getElementById("txtCity").value;
	local.search(city);                 // 初始化地图,设置城市和地图级别。
	                            //启用滚轮放大缩小

}

</script>
<br /><br /><br /><br /><br /><br /><br /><br />	<br /><br /><br /><br />	<br /><br /><br /><br /><br /><br /><br /><br />	<br /><br /><br /><br />

</div>
</body>
</html>
