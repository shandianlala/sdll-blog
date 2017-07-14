<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					<p class="dateAndmessage">2017年7月13日 06:33 | <a href="javascript:void(0)">留言（12）</a></p>
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
						<li><a href="javascript:void(0)">更多文章......</a></li>
					</ul>
				</div>
			</div>
			<!-- 右侧评论 -->
			<div class="middle-right">
				<div class="person-msg">
					<h2>最新留言</h2>
					<ul>
						<li>竹墨轩</li>
						<li>李四</li>
						<li>李四</li>
						<li>李四</li>
						<li>李四</li>
						<li>李四</li>
						<li>李四</li>
					</ul>
				</div>
				<div class="person-msg">
					<h2>Follow me</h2>
					<ul>
						<li>竹墨轩</li>
						<li>李四</li>
						<li>李四</li>
					</ul>
				</div>
				<div class="person-msg">
					<h2>最新留言</h2>
					<ul>
						<li>李四</li>
						<li>李四</li>
					</ul>
				</div>
			</div>
		</div>
		<p class="copyright"><a href="javascript:void(0)">联系方式</a> | 版权所有，保留一切权利！  2017闪电拉拉</p>
	</div>
</body>
</html>
