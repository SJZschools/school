package cn.tedu.pojo;

import java.util.Date;

/**
 * 校园动态实体类
 */
public class Dynamic {
	
	private String id;			//动态id
	private String title;		//动态标题
	private Date rtime;			//发布时间
	private String content;		//动态内容
	private String rid;			//发布者id
	private String rname;		//发布者姓名
	private Integer rcount;		//评论次数
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRtime() {
		return rtime;
	}
	public void setRtime(Date rtime) {
		this.rtime = rtime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Integer getRcount() {
		return rcount;
	}
	public void setRcount(Integer rcount) {
		this.rcount = rcount;
	}
	
	
}
