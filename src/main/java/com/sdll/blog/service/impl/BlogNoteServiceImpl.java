package com.sdll.blog.service.impl;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdll.blog.dao.BlogNoteMapper;
import com.sdll.blog.pojo.BlogNote;
import com.sdll.blog.service.IBlogNoteService;
@Service
@Transactional
public class BlogNoteServiceImpl implements IBlogNoteService,Serializable {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	BlogNoteMapper blogNoteMapper;
	
	public int insertBlogNote(BlogNote blogNote) {
		// TODO Auto-generated method stub
		return blogNoteMapper.insert(blogNote);
	}

}
