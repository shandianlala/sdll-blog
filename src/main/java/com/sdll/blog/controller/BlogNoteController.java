package com.sdll.blog.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.sdll.blog.pojo.BlogNote;
import com.sdll.blog.service.IBlogNoteService;
import com.sdll.blog.vo.ExecResult;

@Controller
public class BlogNoteController {
	
	@Autowired
	IBlogNoteService blogNoteService;
	
	@RequestMapping("ajax/blogList")
	@ResponseBody
	public List<BlogNote> blogList() {
		
		return null;
	}
	
	@RequestMapping("ajax/addOrEditBlog")
	@ResponseBody
	public ExecResult addOrEditBlog(BlogNote blogNote) {
		ExecResult er = new ExecResult();
		int flag = blogNoteService.insertBlogNote(blogNote);
		er.setMsg(flag != 0 ? "保存成功" : "保存失败");
		er.setSuccess(flag != 0 ? true : false);
		return er;
	}
	
	@RequestMapping("ajax/upLoad")
	@ResponseBody
	public Map<String,Object> upLoad(HttpServletRequest request, HttpServletResponse response) {
		//创建一个通用的多部分解析器  
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
        Map<String,Object> map = new HashMap<String,Object>();
        //判断 request 是否有文件上传,即多部分请求  
        if(multipartResolver.isMultipart(request)){  
            //转换成多部分request    
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
            //取得request中的所有文件名  
            Iterator<String> iter = multiRequest.getFileNames();  
            List<String> data = new ArrayList<String>();
            while(iter.hasNext()){ 
                //取得上传文件  
                MultipartFile file = multiRequest.getFile(iter.next());  
                if(file != null){  
                    //取得当前上传文件的文件名称  
                    String myFileName = file.getOriginalFilename();  
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
                    if(myFileName.trim() !=""){  
                        System.out.println(myFileName);  
                        //重命名上传后的文件名  
                        String fileName = "/../upload/" + file.getOriginalFilename();  
                        //定义上传路径  
                        String appRoot = request.getSession().getServletContext().getRealPath("") + File.separator;
                        String path =  appRoot + fileName;  
                        File localFile = new File(path);
                        if(!localFile.exists()) {
                        	localFile.mkdirs();
                        }
                        try {
							file.transferTo(localFile);
							data.add(fileName);
						} catch (Exception e) {
							e.printStackTrace();
							map.put("errno", 1);
							map.put("data", data);
							return map;
						}  
                    }  
                }  
            }  
            map.put("data", data);
            map.put("errno", 0);
        }  
		return map;
	}
	
	
	@RequestMapping("/blog/view")
	public ModelAndView view(String id) {
		ModelAndView view = new ModelAndView("plugins/blog/view");
		BlogNote blogNote = blogNoteService.getByPrimaryKey(id);
		BlogNote upBlogNote = blogNoteService.getBlogNote("1", blogNote.getCreateTime());
		BlogNote downBlogNote = blogNoteService.getBlogNote("0", blogNote.getCreateTime());
		blogNote.setBlogEye(blogNote.getBlogEye() + 1);
		blogNoteService.updateByPrimaryKey(blogNote);
		view.addObject("blogNote", blogNote);
		view.addObject("upBlogNote", upBlogNote);
		view.addObject("downBlogNote", downBlogNote);
		return view;
	}
	

}
