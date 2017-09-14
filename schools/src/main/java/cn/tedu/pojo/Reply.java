package cn.tedu.pojo;

import java.util.Date;

/**
 * 帖子的评论
 * */
public class Reply {
	private String replyId;//评论的id
	private String bssId;//帖子id
	private String userId;//评论人的id
	private String replyTxt;//评论内容
	private Date replyTime;//评论时间
	private Board board;//回复的对象
	public String getReplyId() {
		return replyId;
	}
	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}
	public String getBssId() {
		return bssId;
	}
	public void setBssId(String bssId) {
		this.bssId = bssId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReplyTxt() {
		return replyTxt;
	}
	public void setReplyTxt(String replyTxt) {
		this.replyTxt = replyTxt;
	}
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	
	
}
