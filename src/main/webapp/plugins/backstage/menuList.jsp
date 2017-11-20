<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="convertKeyTag" prefix="convertKeyTag" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的网络日志</title>
<link href="${basePath }/resource/css/style.css" rel="stylesheet">
<link href="${basePath }/resource/layui/css/layui.css" rel="stylesheet">
<link rel="icon" href="${basePath }/resource/image/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="${basePath }/resource/layui/layui.js"></script>
<script type="text/javascript" src="${basePath }/resource/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="${basePath }/resource/js/wangEditor.min.js"></script>
<script src="${basePath }/resource/layui/lay/modules/layer.js"></script>
</head>
<body>
	<div class="blog-menu">
		<ul class="layui-nav">
		  <li class="layui-nav-item">
		  	<a href="">我的网络日志</a>
		  	<dl class="layui-nav-child">
		      <dd><a href="">日志留言</a></dd>
		      <dd><a href="">日志浏览榜</a></dd>
		      <dd><a href="">选项3</a></dd>
		    </dl>
		  </li>
		  <li class="layui-nav-item">
		    <a href="javascript:;">用户</a>
		    <dl class="layui-nav-child">
		      <dd><a href="">用户留言</a></dd>
		      <dd><a href="">用户列表</a></dd>
		      <dd><a href="">选项3</a></dd>
		    </dl>
		  </li>
		  <li class="layui-nav-item">
		  	<a href="">日志类型</a>
		  </li>
		  <li class="layui-nav-item">
		    <a href="javascript:;">社区维护</a>
		    <dl class="layui-nav-child">
		      <dd><a href="">移动模块</a></dd>
		      <dd><a href="">后台模版</a></dd>
		      <dd class="layui-this"><a href="">选中项</a></dd>
		      <dd><a href="">电商平台</a></dd>
		    </dl>
		  </li>
		  <li class="layui-nav-item"><a href="">待定</a></li>
		</ul>
	</div>
	
	<!-- 列表展示 -->
	<div class="blog-menu">
		
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		  <legend>我的网络日志</legend>
		</fieldset>
		<button class="layui-btn" style="float:right;">新建日志</button>
		<div class="layui-form">
		  <table class="layui-table">
		    <colgroup>
		      <col width="70">
		      <col width="150">
		      <col width="150">
		      <col width="200">
		      <col>
		    </colgroup>
		    <thead>
		      <tr>
		        <th>序号</th>
		        <th>日志标题</th>
		        <th>类别</th>
		        <th>创建时间</th>
		        <th>操作</th>
		      </tr> 
		    </thead>
		    <tbody>
		      <tr>
		        <td>1</td>
		        <td>贤心</td>
		        <td>汉族</td>
		        <td>1989-10-14</td>
		        <td>人生似修行</td>
		      </tr>
		      <tr>
		        <td>2</td>
		        <td>张爱玲</td>
		        <td>汉族</td>
		        <td>1920-09-30</td>
		        <td>
		        	<a href="javascript:void(0)"><i class="layui-icon" style="margin-left:10px;">&#xe642;</i></a>
		        	<a href="javascript:void(0)"><i class="layui-icon" style="margin-left:10px;">&#xe62f;</i></a> 
		        	<a href="javascript:void(0)"><i class="layui-icon" style="margin-left:10px;">&#xe640;</i></a>  
		        	<a href="javascript:void(0)"><i class="layui-icon" style="margin-left:10px;">&#xe606;</i></a>  
		        </td>
		      </tr>
		      <tr>
		        <td>3</td>
		        <td>Helen Keller</td>
		        <td>拉丁美裔</td>
		        <td>1880-06-27</td>
		        <td> Life is either a daring adventure or nothing.</td>
		      </tr>
		      <tr>
		        <td>4</td>
		        <td>岳飞</td>
		        <td>汉族</td>
		        <td>1103-北宋崇宁二年</td>
		        <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
		      </tr>
		      <tr>
		        <td>5</td>
		        <td>孟子</td>
		        <td>华夏族（汉族）</td>
		        <td>公元前-372年</td>
		        <td>猿强，则国强。国强，则猿更强！ </td>
		      </tr>
		    </tbody>
		  </table>
		</div>
		<div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-6">
			<a href="javascript:;" class="layui-laypage-prev" data-page="2">上一页</a>
			<a href="javascript:;" data-page="1">1</a><a href="javascript:;" data-page="2">2</a>
			<span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>3</em></span>
			<a href="javascript:;" data-page="4">4</a><a href="javascript:;" data-page="5">5</a>
			<span>…</span>
			<a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="100">末页</a>
			<a href="javascript:;" class="layui-laypage-next" data-page="4">下一页</a>
			<span class="layui-laypage-total">到第 
				<input type="number" min="1" onkeyup="this.value=this.value.replace(/\D/, '');" value="3" class="layui-laypage-skip"> 页
			    <button type="button" class="layui-laypage-btn">确定</button>
			</span>
		</div>
	</div>
	
	<!-- 编辑功能展示 -->
	<div class="blog-menu">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		  <legend>网络日志管理</legend>
		</fieldset>
		<span class="layui-breadcrumb">
		  <a href="#">网络日志</a>
		  <a><cite>编辑</cite></a>
		  <a><cite>《helloworld》</cite></a>
		</span><br/><br/>
		<div class="layui-form-item">
		    <label class="layui-form-label">日志标题</label>
		    <div class="layui-input-block">
		      <input type="text" name="title" id="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
		    </div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">二级标题</label>
		    <div class="layui-input-block">
		      <input type="text" name="title" id="secondTitle" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
		    </div>
		</div>
		<div class="layui-inline">
	      <label class="layui-form-label">日志类型</label>
	      <div class="layui-input-inline">
	        <select name="modules"  id="type">
	          <%-- <option value="">直接选择</option>
	          <c:forEach items="${dictionaryList }" var="dic">
		          <option value="${dic.dictValue }">${dic.dictName }</option>
	          </c:forEach> --%>
	          <convertKeyTag:data dataType="blog_type" keyValue="all"></convertKeyTag:data>
	        </select>
	      </div>
	    </div>
	    
		<div id="editor">
	        <p><b>随心所欲</b>  记录无处不在</p>
	        <p><b>随心所欲</b>  记录无处不在发送到发送到<img src="/../upload/Save-Rock-And-Roll.jpg" style="max-width: 100%;"></p><p><br></p>
	    </div>
	    <div class="saveorpublish">
	    	<button class="layui-btn layui-btn-radius" onclick="addOrEditBlog(1)">保存并发布</button>
	    	<button class="layui-btn layui-btn-radius">保存</button>
	    </div>
	</div>
<script>
	layui.use('element', function(){
	    var element = layui.element(); 
	    //监听导航点击
	    element.on('nav(demo)', function(elem){
		debugger;
	    console.log(elem)
	    layer.msg(elem.text());
	  });
	});
	
	var E = window.wangEditor;
    var editor = new E('#editor')
    editor.customConfig.uploadImgServer = '${basePath }/ajax/upLoad';
    editor.create();
    
    function addOrEditBlog(oper) {
    	var title = $("#title").val(); 
    	var secondTitle = $("#secondTitle").val(); 
    	var type = $('#type option:selected') .val();
    	var blogContent = editor.txt.html();
    	if(title.length == 0) {
    		alert("请填写标题！！！");
    		return;
    	}
    	//alert(blogContent);
    	$.ajax({
    		url : '${basePath}/ajax/addOrEditBlog',
    		dataType : 'json',
    		type : 'post',
    		data : {
    			title : title,
    			secondTitle : secondTitle,
    			type : type,
    			blogContent : blogContent
    		},
    		success : function(data) {
    			if(data.success){
    				alert("保存成功");
    			}
    		},
    		error : function(data) {
    			alert("访问服务器出错！");
    		}
    	});
    	
    }
</script>
</body>
</html>