package com.sdll.blog.service;

import java.util.List;

import com.sdll.blog.pojo.BlogNote;

public interface IBlogNoteService {
	
	int insertBlogNote(BlogNote blogNote);
	
	/**
	 * 获取最新的日志
	 * @return
	 */
	BlogNote getBlogNoteUpdate();
	
	/**
	 * 获取最新的10条博客记录
	 * @return
	 */
	List<BlogNote> listBlogNote();

}
