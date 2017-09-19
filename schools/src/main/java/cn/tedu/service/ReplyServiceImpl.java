package cn.tedu.service;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.ReplyMapper;
import cn.tedu.pojo.Reply;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	ReplyMapper replyMapper;
	
	public void saveReply(String replyTxt, String bbsId, String userId) {
		String replyId = UUID.randomUUID().toString();
		Date replyTime = new Date();
		Reply reply = new Reply();
		reply.setBssId(bbsId);
		reply.setReplyId(replyId);
		reply.setReplyTime(replyTime);
		reply.setReplyTxt(replyTxt);
		reply.setUserId(userId);
		replyMapper.saveReply(reply);
	}
	
}
