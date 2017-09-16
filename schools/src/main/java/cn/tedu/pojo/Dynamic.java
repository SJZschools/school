package cn.tedu.pojo;

import java.util.Date;

/**
 * 校园动态实体类
 */
public class Dynamic {
	
	private String dynamicId;			//动态id
	private String dynamicTitle;		//动态标题
	private Date dynamicTime;			//发布时间
	private String dynamicContent;		//动态内容
	private String rid;			//发布者id
	private String rname;		//发布者姓名
	private Integer rcount;		//点赞次数
	public String getDynamicId() {
		return dynamicId;
	}
	public void setDynamicId(String dynamicId) {
		this.dynamicId = dynamicId;
	}
	public String getDynamicTitle() {
		return dynamicTitle;
	}
	public void setDynamicTitle(String dynamicTitle) {
		this.dynamicTitle = dynamicTitle;
	}
	public Date getDynamicTime() {
		return dynamicTime;
	}
	public void setDynamicTime(Date dynamicTime) {
		this.dynamicTime = dynamicTime;
	}
	public String getDynamicContent() {
		return dynamicContent;
	}
	public void setDynamicContent(String dynamicContent) {
		this.dynamicContent = dynamicContent;
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
