package com.perplus.member.dao;
//1
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.perplus.member.vo.ChattingVo;

public interface ChattingDao {
	
	//채팅방 만들기
	int creatChatting(ChattingVo chatting);
	
	//채팅방 삭제
	int deleteChatting(int chattingNumber);
	
	//내가 속해있는 채팅방 가져오기
	List<ChattingVo> selectMyChatting(String memberEmail);
	
	//나의 아이디와 상대방의 아이디로 방 찾기
	ChattingVo findByChattingNumber(Map<String, Object> map);
	
	//채팅방과 채팅로그 가져오기
	ChattingVo chattingJoin(int chattingNumber);
}
