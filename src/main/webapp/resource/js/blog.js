//downloadFile(this, '')
$(function() {
	//给下载按钮动态绑定事件
	$(".fa-download").parent().click(function() {
		var blogNoteId = $("#blogNoteId").val();
		if(blogNoteId != '') {
			downloadBlog(this, blogNoteId);
		}
	});
	
});

/**
 * 下载博客文章内容
 * @param obj 被点击的<a>标签
 * @param id id用来确认是单个博客文章下载还是批量文章下载
 * 			id = ''时，单篇博客文章下载
 * @returns
 */
function downloadBlog(obj, id){
 	var blogIds = new Array();
	if(id==""){
		var idAndstatus = null;
		var flag = false;
		$("input[name='paperListCheckBox']:checked").each(function(){
			idAndstatus = new Array();
	    	idAndstatus = $(this).val().split(",");
	    	//id = id + idAndstatus[0]+",";
	    	if(idAndstatus[1] != 2) {
	    		alert("只有状态是“已发布”的试卷，才可以下载哦!");
	    		flag = true;
	    		return false;
	    	}
	    	blogIds.push(idAndstatus[0]);
		});
		if( blogIds.length == 0){
			alert("你还没有选择博客哦！！！");
			return;
		}
		if(flag) {return;}
		id = paperId.toString();
		var url = basePath + "/tat/tatexampaper/ajax/downloadPaper?paperIds="+id;
	} else {
		var url = basePath + "blog/ajax/downloadBlog?blogIds="+id;
	}
	$(obj).attr("href",url);
}