package com.perplus.member.dao;

import java.util.List;

import com.perplus.member.vo.ChattingVo;

public interface ChattingDao {
	
	List<ChattingVo> selectMyChatting(String memberEmail);
	
	int findByChattingNumber(String memberEmail, String chattingPartner);
	
	
}
