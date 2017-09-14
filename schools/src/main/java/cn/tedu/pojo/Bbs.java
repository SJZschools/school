package cn.tedu.pojo;
/**
 * 帖子的实体类
 * */
public class Bbs {
	private String bssId;//帖子 id
	private String bssTitle;//帖子标题
	private String bssContext;//帖子内容
	private String creatTime;//创建时间
	private String creatId;//创建人id
	private Integer bcount;//浏览次数
	private Integer recount;//评论次数
	private String bssClass;//帖子分类，注意每个帖子只能选一个分类
	private Integer bssLevel;//帖子的状态：0是普通帖，1是置顶帖 2是精华帖
	private Reply reply;//帖子回复的对象
	
	
	public Reply getReply() {
		return reply;
	}
	public void setReply(Reply reply) {
		this.reply = reply;
	}
	public String getBssId() {
		return bssId;
	}
	public void setBssId(String bssId) {
		this.bssId = bssId;
	}
	public String getBssTitle() {
		return bssTitle;
	}
	public void setBssTitle(String bssTitle) {
		this.bssTitle = bssTitle;
	}
	public String getBssContext() {
		return bssContext;
	}
	public void setBssContext(String bssContext) {
		this.bssContext = bssContext;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	public String getCreatId() {
		return creatId;
	}
	public void setCreatId(String creatId) {
		this.creatId = creatId;
	}
	public Integer getBcount() {
		return bcount;
	}
	public void setBcount(Integer bcount) {
		this.bcount = bcount;
	}
	public Integer getRecount() {
		return recount;
	}
	public void setRecount(Integer recount) {
		this.recount = recount;
	}
	public String getBssClass() {
		return bssClass;
	}
	public void setBssClass(String bssClass) {
		this.bssClass = bssClass;
	}
	public Integer getBssLevel() {
		return bssLevel;
	}
	public void setBssLevel(Integer bssLevel) {
		this.bssLevel = bssLevel;
	}
	
}
