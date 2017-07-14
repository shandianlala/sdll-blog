package com.sdll.blog.service;

import com.sdll.blog.pojo.BlogNote;

public interface IBlogNoteService {
	
	int insertBlogNote(BlogNote blogNote);
	
	/**
	 * 获取最新的日志
	 * @return
	 */
	BlogNote getBlogNoteUpdate();

}
