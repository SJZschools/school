package cn.tedu.pojo;

import java.util.Date;

//评论的回复
public class Board {
	private String responseId;//回复的id，和评论的id进行关联
	private String userId;
	private String responseTxt;//回复内容
	private Date responseTime;//回复时间
	public String getResponseId() {
		return responseId;
	}
	public void setResponseId(String responseId) {
		this.responseId = responseId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getResponseTxt() {
		return responseTxt;
	}
	public void setResponseTxt(String responseTxt) {
		this.responseTxt = responseTxt;
	}
	public Date getResponseTime() {
		return responseTime;
	}
	public void setResponseTime(Date responseTime) {
		this.responseTime = responseTime;
	}
	
}
