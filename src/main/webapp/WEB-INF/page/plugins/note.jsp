<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/6
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@taglib uri="/com.eshore.InitDataTag" prefix="i"%> --%>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=h96yqW28Cih3kg1CsGs1XwMVRFYDpkXK"></script>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
    	var map = BMap.Map("mapbox");	
    	var point = new BMap.Point(116.331398,39.897445);
    	map.centerAndZoom(point,12);

    	var geolocation = new BMap.Geolocation();
    	geolocation.getCurrentPosition(function(r){
    		if(this.getStatus() == BMAP_STATUS_SUCCESS){
    			var mk = new BMap.Marker(r.point);
    			map.addOverlay(mk);
    			map.panTo(r.point);
    			alert('您的位置：'+r.point.lng+','+r.point.lat);
    		}
    		else {
    			alert('failed'+this.getStatus());
    		}        
    	},{enableHighAccuracy: true})
    
    
    </script>
</head>
<body>
<h1>note页面到了</h1>
<div id="mapbox" style="width: 300px;height: 300px;border-color: blue;">
<a href="${basePath }/">返回首页</a>
</div>
</body>
</html>
