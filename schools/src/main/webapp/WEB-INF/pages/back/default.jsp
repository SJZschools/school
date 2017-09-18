<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	

<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript" src="js/format+zh_CN,default,corechart.I.js"></script>		
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>

<script class="jquery library" src="/js/sandbox/jquery/jquery-1.8.2.min.js" type="text/javascript"></script>
$(document).ready(function(){
	animate();
  $(".play").click(animate).mouseover(function(){
  	$(".play").css({"background-color":"#A55"});
  }).mouseout(function(){
  	$(".play").css({"background-color":"#060"});
  });
});
function animate(){
	  $('div>div>div').each(function(id){
    $(this).css({
      position: 'relative',
      top: '-200px',
      opacity: 0
    });
    var wait = Math.floor((Math.random()*3000)+1);
    $(this).delay(wait).animate({
      top: '0px',
      opacity: 1
    },1000);
  });
}


<script type="text/javascript">
		gvChartInit();
		jQuery(document).ready(function(){

		jQuery('#myTable5').gvChart({
				chartType: 'PieChart',
				gvSettings: {
					vAxis: {title: 'No of players'},
					hAxis: {title: 'Month'},
					width: 650,
					height: 250
					}
			});
		});
		</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">工作台</a></li>
    </ul>
    </div>
    
    
    <div class="mainbox">
    
    <div class="mainleft">
    
    
    <div class="leftinfo">
    <div class="listtitle"><a href="#" class="more1">更多</a>数据统计</div>
     
     
     <div class='content'>
    <div style='padding-right:40px'>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
    </div>
    <div style='padding-right:20px'>
      <div></div>
      <div></div>
      <div style='margin-right:122px'>
      </div>
    </div>
    <div>
      <div></div>
      <div></div>
      <div style='margin-right:142px'></div>
    </div>
    <div>
      <div></div>
      <div style='margin-right:82px' class="play"></div>
      <div  class="play"></div>
      <div style='margin-right:42px'></div>
    </div>
    <div>
      <div></div>
      <div style='margin-right:62px' class="play"></div>
      <div class="play"></div>
      <div class="play"></div>
      <div style='margin-right:42px'></div>
    </div>
    <div>
      <div></div>
      <div style='margin-right:42px' class="play"></div>
      <div class="play"></div>
      <div class="play"></div>
      <div class="play"></div>
      <div style='margin-right:42px'></div>
    </div>
    <div>
      <div></div>
      <div style='margin-right:62px' class="play"></div>
      <div class="play"></div>
      <div class="play"></div>
      <div style='margin-right:42px'></div>
    </div>
    <div>
      <div></div>
      <div style='margin-right:82px' class="play"></div>
      <div class="play"></div>
      <div style='margin-right:42px'></div>
    </div>
    <div>
      <div style='margin-right:22px'></div>
      <div style='margin-right:142px'></div>
    </div>
    <div>
      <div style='margin-right:42px'></div>
      <div></div>
      <div style='margin-right:102px'></div>
    </div>
    <div>
      <div style='margin-right:62px'></div>
      <div></div>
      <div style='margin-right:82px'></div>
    </div>
    <div>
      <div style='margin-right:42px'></div>
      <div></div>
      <div style='margin-right:102px'></div>
    </div>
    <div>
      <div style='margin-right:22px'></div>
      <div></div>
      <div style='margin-right:122px'></div>
    </div>    
    <div>
      <div></div>
      <div></div>
      <div style='margin-right:142px'></div>
    </div>      
    <div>
      <div></div>
      <div style='margin-right:162px'></div>
    </div>
  </div>   
   
    
    </div>
    <!--leftinfo end-->
    
    
    <div class="leftinfos">
    
   
    <div class="infoleft">
    
    <div class="listtitle"><a href="#" class="more1">更多</a>待办事项</div>    
    <ul class="newlist">
    <li><a href="#">上海自贸区今日正式挂牌成立</a><b>10-09</b></li>
    <li><a href="#">习近平将访东南亚两国 首次出席APEC峰会</a><b>10-08</b></li>
    <li><a href="#">最高法:谎称炸弹致航班备降者从重追刑责</a><b>10-09</b></li>
    <li><a href="#">华北大部遭遇雾霾天 北京全城陷重污染</a><b>10-06</b></li>
    <li><a href="#">"环保专家"董良杰涉嫌寻衅滋事被刑拘</a><b>10-05</b></li>
    <li><a href="#">中央巡视组：重庆对一把手监督不到位</a><b>10-04</b></li>
    <li><a href="#">囧!悍马没改好成华丽马车(图)</a><b>10-03</b></li>
    </ul>   
    
    </div>
    
    
    <div class="inforight">
    <div class="listtitle"><a href="#" class="more1">添加</a>常用工具</div>
    
    <ul class="tooli">
    <li><span><img src="images/d01.png" /></span><p><a href="#">信息资料</a></p></li>
    <li><span><img src="images/d02.png" /></span><p><a href="#">编辑</a></p></li>
    <li><span><img src="images/d03.png" /></span><p><a href="#">记事本</a></p></li>
    <li><span><img src="images/d04.png" /></span><p><a href="#">任务日历</a></p></li>
    <li><span><img src="images/d05.png" /></span><p><a href="#">图片管理</a></p></li>
    <li><span><img src="images/d06.png" /></span><p><a href="#">交易</a></p></li>
    <li><span><img src="images/d07.png" /></span><p><a href="#">档案袋</a></p></li>    
    </ul>
    
    </div>
    
    
    </div>
    
    
    </div>
    <!--mainleft end-->
    
    
    <div class="mainright">
    
    
    <div class="dflist">
    <div class="listtitle"><a href="#" class="more1">更多</a>最新信息</div>    
    <ul class="newlist">
    <li><a href="#">上海自贸区今日正式挂牌成立</a></li>
    <li><a href="#">习近平将访东南亚两国 首次出席APEC峰会</a></li>
    <li><a href="#">最高法:谎称炸弹致航班备降者从重追刑责</a></li>
    <li><a href="#">华北大部遭遇雾霾天 北京全城陷重污染</a></li>
    <li><a href="#">"环保专家"董良杰涉嫌寻衅滋事被刑拘</a></li>
    <li><a href="#">中央巡视组：重庆对一把手监督不到位</a></li>
    <li><a href="#">囧!悍马没改好成华丽马车(图)</a></li>
    <li><a href="#">澳门黄金周加派稽查人员监察出租车违规行为</a></li>
    <li><a href="#">香港环境局长吁民众支持政府扩建堆填区</a></li> 
    </ul>        
    </div>
    
    
    <div class="dflist1">
    <div class="listtitle"><a href="#" class="more1">更多</a>信息统计</div>    
    <ul class="newlist">
    <li><i>会员数：</a></i>2535462</li>
    <li><i>文档数：</a></i>5546</li>
    <li><i>普通文章：</a></i>2315</li>
    <li><i>软件：</a></i>1585</li>
    <li><i>评论数：</a></i>5342</li>    
    </ul>        
    </div>
    
    

    
    
    </div>
    <!--mainright end-->
    
    
    </div>



</body>
<script type="text/javascript">
	setWidth();
	$(window).resize(function(){
		setWidth();	
	});
	function setWidth(){
		var width = ($('.leftinfos').width()-12)/2;
		$('.infoleft,.inforight').width(width);
	}
</script>
</html>
