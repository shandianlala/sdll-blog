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
	<link rel="stylesheet" href="${basePath }/resource/css/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="icon" href="${basePath }/resource/image/favicon.ico" type="image/x-icon">
    <script type="text/javascript">
    	var basePath = '${basePath}/';
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
						<c:if test="${not empty upBlogNote.id}">
							<li>上一篇   » <a href="${basePath }/blog/view?id=${upBlogNote.id}">${upBlogNote.title }</a></li>
						</c:if>
						<c:if test="${not empty downBlogNote.id}">
							<li>下一篇   » <a href="${basePath }/blog/view?id=${downBlogNote.id}">${downBlogNote.title }</a></li>
						</c:if>
					</ul>
				</div>
				<a href="javascript:void(0)" class="first-title">${blogNote.title }</a>
				<div class="icon_pic">
					<a href="javascript:void(0)"><i class="fa fa-eye fa-lg"></i><span> ${blogNote.blogEye }</span> </a>
					<a href="javascript:void(0)"><i class="fa fa-star fa-lg"></i><span> ${blogNote.blogStar }</span> </a>
					<a href="javascript:void(0)"><i class="fa fa-thumbs-o-up fa-lg"></i><span> ${blogNote.blogThumbs }</span> </a>
					<a href="javascript:void(0)"><i class="fa fa-comment fa-lg"></i><span> ${blogNote.blogComment }</span> </a>
					<a href="javascript:void(0)"><i class="fa fa-download fa-lg"></i><span> ${blogNote.blogDownload }</span> </a>
				</div>
				<div class="title-div-content">
					<p class="dateAndmessage"><b>日期：</b><fmt:formatDate value="${blogNote.createTime }" type="both" dateStyle="full" /> | <a href="javascript:void(0)">留言（12）</a></p>
					<div class="view-blogContent">
						<p class="second-title">${blogNote.secondTitle }</p>
						${blogNote.blogContent }
					</div>
				<i><h3>留言：</h2></i>
				</div>
				<!-- 评论 -->
				<div id="leave_word_message">
					<div class="title-div-content-leaveword">
						<a href="#"><i>小明：</i></a><p>这篇文章写得不错呦！！！</p>
					</div>
					<div class="title-div-content-leaveword">
						<a href="#"><i>小明：</i></a><p>这篇文章写得不错呦！！！</p>
					</div>
					<div class="title-div-content-leaveword">
						<a href="#"><i>小明：</i></a><p>这篇文章写得不错呦！！！</p>
					</div>
				</div>
				<!-- 评论框 -->
				<div class="title-div-content-leaveword">
						<i><h3>YOUR MESSAGE：</h2></i>
						
						<label>
							<span>Your Name :</span>
							<input id="name" type="text" name="name" placeholder="Your Full Name" />
						</label><br>
						<label>
							<span>Your Email :</span>
							<input id="email" type="email" name="email" placeholder="Valid Email Address" />
						</label><br>
						<label>
							<span>Message :</span>
							<textarea id="message" name="message" placeholder="Your Message to Us"></textarea>
						</label>
						<label>
						<span>&nbsp;</span>
						<input type="button" class="button" value="Send" />
						</label>
					
				</div>
			</div>
		</div>
		<p class="copyright"><a href="javascript:void(0)">联系方式</a> | 版权所有，保留一切权利！  2017闪电拉拉</p>
	</div>
</body>
</html>
