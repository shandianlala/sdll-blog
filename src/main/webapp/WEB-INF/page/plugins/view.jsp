<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="convertKeyTag" prefix="convertKeyTag" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>${blogNote.title }</title>
	<link href="${basePath }/resource/css/style.css" rel="stylesheet">
    <script type="text/javascript">
    
    </script>
</head>
<body >
	<div class="blog-content">
		<div class="blog-head">
			<a href="${basePath }/blog"><span>闪电拉拉的网络日志 » 档案</span></a>
			<div class="searchbox">
				<input type="text" />
				<a href="javascript:void(0)" class="search-btn"></a>
			</div>
		</div>
		<div class="blog-middle">
			<!-- 左侧文章列表 -->
			<div class="middle-left-view">
				<div class="person-msg">
					<h2 style="color:orange">分类：<a href="javascript:void(0)" ><convertKeyTag:data dataType="blog_type" keyValue="${blogNote.type }"></convertKeyTag:data></a></h2>
					<ul>
						<li>上一篇   » 对对对</li>
						<li>下一篇   » </li>
					</ul>
				</div>
				<a href="javascript:void(0)" class="first-title">${blogNote.title }</a>
				<div class="title-div-content">
					<p class="dateAndmessage"><b>日期：</b><fmt:formatDate value="${blogNote.createTime }" type="both" dateStyle="full" /> | <a href="javascript:void(0)">留言（12）</a></p>
					<div class="view-blogContent">
						<p class="second-title">${blogNote.secondTitle }</p>
						${blogNote.blogContent }
					</div>
				</div>
			</div>
		</div>
		<p class="copyright"><a href="javascript:void(0)">联系方式</a> | 版权所有，保留一切权利！  2017闪电拉拉</p>
	</div>
</body>
</html>
