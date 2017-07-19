package com.sdll.blog.service;

import java.util.Date;
import java.util.List;

import com.sdll.blog.pojo.BlogNote;

public interface IBlogNoteService {
	
	int insertBlogNote(BlogNote blogNote);
	
	/**
     * 获取上一篇日志 || 下一篇日志 || 最新的日志
     * @param operate
     * 			操作参数：取值“1”：上一篇, “0”：下一篇,
     * @param createTime 时间参数:
     * 				上一篇  > createTime  ||
     * 				下一篇  < createTime
     * @return
     */
	BlogNote getBlogNote(String operate, Date createTime);
	
	/**
	 * 获取最新的10条博客记录
	 * @return
	 */
	List<BlogNote> listBlogNote();
	
	/**
	 * 同过id查询网络日志的内容
	 * @param id 日志id
	 * @return
	 */
	BlogNote getByPrimaryKey(String id);
	
	/**
	 * 通过主键更新blogNote
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(BlogNote record);

}
