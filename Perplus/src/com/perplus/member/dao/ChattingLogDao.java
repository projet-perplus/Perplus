package com.perplus.member.dao;
//1
import java.util.List;

import com.perplus.member.vo.ChattingLogVo;

public interface ChattingLogDao {
	
	//채팅로그 가져오기
	List<ChattingLogVo> selectChattingLog(int chattingNumber);
	
	//채팅로그 등록하기
	int insertChattingLog(ChattingLogVo chattingLog);
	
}
