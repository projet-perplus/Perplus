package com.perplus.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.perplus.member.vo.ChattingVo;

public interface ChattingDao {
	
	
	
	int creatChatting(ChattingVo chattingNumber);
	
	int deleteChatting(int chattingNumber);
	
	
	List<ChattingVo> selectMyChatting(String memberEmail);
	
	
	ChattingVo findByChattingNumber(Map<String, String> map);
	
	List<ChattingVo> chattingjoin();
	
}
