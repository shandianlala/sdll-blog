<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@taglib uri="/com.eshore.InitDataTag" prefix="i"%> --%>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>闪电拉拉的网络日志</title>
	<link href="${basePath }/resource/css/style.css" rel="stylesheet">
    <script type="text/javascript">
    
    </script>
</head>
<body >
	<div class="blog-content">
		<div class="blog-head">
			<span>闪电拉拉的网络日志</span>
			<div class="searchbox">
				<input type="text" />
				<a href="javascript:void(0)" class="search-btn"></a>
			</div>
		</div>
		<div class="blog-middle">
			<!-- 左侧文章列表 -->
			<div class="middle-left">
				<a href="javascript:void(0)" class="first-title">middle-left开发</a>
				<div class="title-div">
					<p class="blog-type">分类：<a  href="javascript:void(0)">算法与数学</a></p>
					<p class="second-title">眼下最热门的技术，绝对是人工智能。</p>
					<a class="view-title" href="javascript:void(0)">继续阅读全文 »</a>
					<p class="dateAndmessage">2017年7月13日 06:33 | 留言（12）</p>
				</div>
				<p class="latest-blog">最新文章</p>
				<div class="latest-blog-title">
					<ul id="blog-list">
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
						<li><span>2017年06月29日</span> » <a href="javascript:void(0)">45岁以后的人生</a></li>
					</ul>
				</div>
			</div>
			<!-- 右侧评论 -->
			<div class="middle-right">middle-right</div>
		</div>
	</div>
</body>
</html>
