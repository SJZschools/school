package cn.tedu.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.BbsSingleMapper;
import cn.tedu.mapper.BoardMapper;
import cn.tedu.pojo.Board;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Autowired
	private BbsSingleMapper bbsSingleMapper;
	
	public void saveBoard(String comment, String bssId, String userId, String replyId) {
		
		Board board = new Board();
		board.setResponseId(replyId);
		board.setBbsId(bssId);
		board.setUserId(userId);
		board.setResponseTxt(comment);
		board.setResponseTime(new Date());
		
		boardMapper.saveBoard(board);
		
		bbsSingleMapper.findAllReplyById(bssId);
	}
	
}
