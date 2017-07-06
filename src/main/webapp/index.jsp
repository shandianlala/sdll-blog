<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@taglib uri="/com.eshore.InitDataTag" prefix="i"%> --%>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<script>
var basePath='${basePath}';
</script>
<html>
<body>
<h2>Hello World!</h2>
<a href="${basePath }/toNote">toNote</a>
</body>
</html>
