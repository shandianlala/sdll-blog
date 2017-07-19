package com.sdll.blog.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdll.blog.pojo.BlogNote;

public interface BlogNoteMapper {
    int deleteByPrimaryKey(String id);

    int insert(BlogNote record);

    int insertSelective(BlogNote record);
    
    /**
	 * 同过id查询网络日志的内容
	 * @param id 日志id
	 * @return
	 */
    BlogNote selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BlogNote record);

    int updateByPrimaryKeyWithBLOBs(BlogNote record);

    int updateByPrimaryKey(BlogNote record);
    /**
     * 获取最近的一篇日志
     * @return
     */
    BlogNote selectByUpdate();
    
    /**
	 * 获取最新的10条博客记录
	 * @return
	 */
	List<BlogNote> listBlogNote();
	
	/**
     * 获取上一篇日志 || 下一篇日志 || 最新的日志
     * @param operate
     * 			操作参数：取值“1”：上一篇, “0”：下一篇,
     * @param createTime 时间参数:
     * 				上一篇  > createTime  ||
     * 				下一篇  < createTime
     * @return
     */
    BlogNote selectByUpOrDownBlogNote(@Param("operate")String operate, @Param("createTime")Date createTime);
	
}