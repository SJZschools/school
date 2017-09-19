<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="base.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
    <meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
    <title>百度地图API自定义地图</title>
    <!--引用百度地图API-->
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=您的密匙"></script>
  </head>
  
  <body>
    <!--百度地图容器-->
    
    <div style="width:2000px;height:900px;border:#ccc solid 1px;font-size:12px" id="map"></div>
    
    <!--<p style="color:red;font-weight:600">地图生成工具基于百度地图JS api v2.0版本开发，使用请申请密匙。
      <a href="http://developer.baidu.com/map/index.php?title=jspopular/guide/introduction" style="color:#2f83c7" target="_blank">了解如何申请密匙</a>
      <a href="http://lbsyun.baidu.com/apiconsole/key?application=key" style="color:#2f83c7" target="_blank">申请密匙</a>
    </p>-->
  </body>
  <script src="http://api.map.baidu.com/api?v=2.0&ak=d8OG9NDHyPu6uySMtctpuMNhLT100Mhz" type="text/javascript"></script>
  <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
      createMap();//创建地图
      setMapEvent();//设置地图事件
      addMapControl();//向地图添加控件
      addMapOverlay();//向地图添加覆盖物
      addClickHandler(target,window);//
    }
    //创建地图
    function createMap(){ 
	    
      map = new BMap.Map("map"); 
      
      map.centerAndZoom(new BMap.Point(114.54071,38.050741),17);
    }

    //设置地图事件
    function setMapEvent(){
      map.enableScrollWheelZoom();
      map.enableKeyboard();
      map.enableDoubleClickZoom()
    }

    //
    function addClickHandler(target,window){
      target.addEventListener("click",function(){
        target.openInfoWindow(window);
      });
    }

    //向地图添加覆盖物
    function addMapOverlay(){
      var markers = [
        {content:"河北医科大学位于河北省省会石家庄市，是一所具有百年历史和优良医学教育传统的省属骨干大学，是中西部高校基础能力建设工程高校 ，“卓越医生教育培养计划”试点高校。图书馆藏纸质图书93.6万册，电子图书390万册。",title:"",imageOffset: {width:-46,height:-21},position:{lat:38.051096,lng:114.541303}}
      ];
      for(var index = 0; index < markers.length; index++ ){
        var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
        var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(200,255),{
          imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
        })});
        var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
        var opts = {
          width: 200,
          title: markers[index].title,
          enableMessage: false
        };
        var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
        marker.setLabel(label);
        addClickHandler(marker,infoWindow);
        map.addOverlay(marker);
      };
      var labels = [
        {position:{lng:114.541465,lat:38.051011},content:""}
      ];
      for(var index = 0; index < labels.length; index++){
        var opt = { position: new BMap.Point(labels[index].position.lng,labels[index].position.lat )};
        var label = new BMap.Label(labels[index].content,opt);
        map.addOverlay(label);
      };
      var plOpts = [
        {strokeColor:"#f00",strokeWeight:"4",strokeOpacity:"0.6"}
      ];
      var plPath = [
        [
          new BMap.Point(114.542489,38.051309),
          new BMap.Point(114.540728,38.051366),
          new BMap.Point(114.540477,38.05067),
          new BMap.Point(114.542148,38.050585),
          new BMap.Point(114.542489,38.051267),
          new BMap.Point(114.542435,38.051295),
          new BMap.Point(114.542435,38.051295),
          new BMap.Point(114.542435,38.051295)
        ],
      ];
      for(var index = 0; index < plOpts.length; index++){
        var polyline = new BMap.Polyline(plPath[index],plOpts[index]);
        map.addOverlay(polyline);
      }
    }
    
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
    var map;

    /*map.setMapStyle({style:'midnight'}); */
    
      initMap();
      
  </script>
</html>
