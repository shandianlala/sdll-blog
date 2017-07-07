<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<script>
var basePath='${basePath}';
</script>
<html>
<head>
	<title>闪电拉拉的个人网站</title>
	<link href="${basePath }/resource/css/style.css" rel="stylesheet">
</head>
<body style="background-image: url(${basePath }/resource/image/72270.jpg); background-size:cover;background-repeat: no-repeat;">
	<div id="indexhome" >
		<div class="index">
			<a href="javascript:void(0)"><h1>闪电拉拉的个人网站</h1></a>
			<p>shandianlala's personal website</p>
		</div>
		<div class="index">
			
		</div>
		<div class="index"></div>
	
	</div>
	<%-- <a href="${basePath }/toNote">toNote</a> --%>
</body>
</html>
