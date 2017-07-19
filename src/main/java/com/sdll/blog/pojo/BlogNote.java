package com.sdll.blog.pojo;

import java.util.Date;

public class BlogNote {
    private String id;

    private String title;

    private String secondTitle;

    private String status;

    private Date createTime;

    private Date updateTime;

    private String type;

    private String blogContent;
    
    private int blogEye;//浏览次数
    
    private int blogStar;//收藏次数
    
    private int blogThumbs;//点赞次数
    
    private int blogDownload;//下载次数
    
    private int blogComment;//评论次数

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getSecondTitle() {
        return secondTitle;
    }

    public void setSecondTitle(String secondTitle) {
        this.secondTitle = secondTitle == null ? null : secondTitle.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent == null ? null : blogContent.trim();
    }

	public int getBlogEye() {
		return blogEye;
	}

	public void setBlogEye(int blogEye) {
		this.blogEye = blogEye;
	}

	public int getBlogStar() {
		return blogStar;
	}

	public void setBlogStar(int blogStar) {
		this.blogStar = blogStar;
	}

	public int getBlogThumbs() {
		return blogThumbs;
	}

	public void setBlogThumbs(int blogThumbs) {
		this.blogThumbs = blogThumbs;
	}

	public int getBlogDownload() {
		return blogDownload;
	}

	public void setBlogDownload(int blogDownload) {
		this.blogDownload = blogDownload;
	}

	public int getBlogComment() {
		return blogComment;
	}

	public void setBlogComment(int blogComment) {
		this.blogComment = blogComment;
	}
}