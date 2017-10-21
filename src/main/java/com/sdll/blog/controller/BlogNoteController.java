package com.sdll.blog.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletOutputStream;
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
import com.sdll.blog.util.DateUtils;
import com.sdll.blog.vo.ExecResult;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

@Controller
public class BlogNoteController {
	
	/**项目所在tomcat位置*/
	public String appRootPath;
	
	public String handledBase64Block;
	
	public String xmlimaHref;
	
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
                        String appRootPath = request.getSession().getServletContext().getRealPath("") + File.separator;
                        String path =  appRootPath + fileName;  
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
	
	@RequestMapping("/blog/ajax/downloadBlog")
	public void downloadBlog(String blogIds, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("下载博客啦");
		String[] blogIdArr = blogIds.split(",");
		appRootPath = request.getSession().getServletContext().getRealPath("/");  //寻找试题图片的时候需要这个
		if (blogIdArr != null && blogIdArr.length == 1) {
			//单个博客文章下载     
			handledBase64Block = "";
			xmlimaHref = "";
			BlogNote blogNote = blogNoteService.getByPrimaryKey(blogIdArr[0]);
			// 设置response参数，可以打开下载页面
			String fileName = blogNote.getTitle() + "_" + DateUtils.getDateToStringByPattern(new Date(), "yyyyMMddHHmmss");
	        response.reset();
	        response.setContentType("application/msword;charset=utf-8");
	        response.setHeader("Content-Disposition", "attachment;filename="+ new String(fileName.getBytes("GBK"), "ISO8859-1") + ".doc");
	        ServletOutputStream out = response.getOutputStream();
			downloadSingleBlog(out, blogNote, response);
		}
		if (blogIdArr != null && blogIdArr.length != 1) {
			//多篇博客文章下载
			String zipName = "博客下载.zip" + "_" + DateUtils.getDateToStringByPattern(new Date(), "yyyyMMddHHmmss");
			response.setCharacterEncoding("ISO8859-1");
			response.setContentType("APPLICATION/OCTET-STREAM"); // 设置response的编码方式
			response.setHeader("Content-Disposition",
					"attachment; filename=" + new String(zipName.getBytes("GBK"), "ISO8859-1"));
			ZipOutputStream out = new ZipOutputStream(new BufferedOutputStream(response.getOutputStream()));
			BlogNote blogNote = null;
			for (String id : blogIdArr) {
				//单个博客文章下载   
				handledBase64Block = "";
				xmlimaHref = "";
				blogNote = blogNoteService.getByPrimaryKey(id);
				// 设置response参数，可以打开下载页面
				String fileName = blogNote.getTitle() + "_" + DateUtils.getDateToStringByPattern(new Date(), "yyyyMMddHHmmss");
				out.putNextEntry(new ZipEntry(fileName+".doc"));
				ByteArrayOutputStream os = new ByteArrayOutputStream();
				downloadSingleBlog(os, blogNote, response);
				// 写文件
				os.writeTo(out);
				out.flush();
				out.closeEntry();
				os.close();
				response.flushBuffer();
			}
			if (out != null) {
				out.close();
			}
		}
	}
	
	/**
	 * 下载单篇或多篇博客文章提取的公共方法
	 * @createUser shandianlala
	 * @createDate 2017年10月20日
	 * @param out
	 * @param paper
	 * @param response
	 * @throws IOException
	 */
	private void downloadSingleBlog(OutputStream out,  BlogNote blogNote, HttpServletResponse response) throws IOException{
		Template t = getTemplate();
		if(t != null){
	        Map<String,Object> dataMap=new HashMap<String,Object>();
			dataMap.put("blogNote", blogNote);
			dataMap.put("createTime", DateUtils.getDateToStringByPattern(blogNote.getCreateTime(), "YYYY年MM月dd hh:mm"));
	        dataMap.put("imagesBase64String", handledBase64Block);
	        dataMap.put("imagesXmlHrefString", xmlimaHref);
	        Writer wb = null;
			try {
				wb = new BufferedWriter(new OutputStreamWriter(out,"UTF-8"));
				t.process(dataMap, wb);//写数据到模板
				//System.out.println("下载试卷结束啦！");
				wb.close();
			} catch (FileNotFoundException e1) {
				e1.printStackTrace();
			} catch (TemplateException e) {
				e.printStackTrace();
			}
	        
		}
	}
	
	/**
	 * 获取博客文章下载模板
	 * @createUser shandianlala
	 * @createDate 2017年10月20日
	 * @return
	 */
	public Template getTemplate() {
		//设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，
		//这里我们的模板是放在resources 目录下面
		Configuration configuration = new Configuration();
		configuration.setDefaultEncoding("UTF-8");
		configuration.setClassForTemplateLoading(this.getClass(), "/");
		Template t=null;
		try {
			//test.ftl为要装载的模板
			t = configuration.getTemplate("template/blogTemplate.ftl","UTF-8");
			return t;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
