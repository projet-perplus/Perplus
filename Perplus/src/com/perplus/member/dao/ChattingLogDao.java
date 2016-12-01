package com.perplus.member.dao;

import java.util.List;

import com.perplus.member.vo.ChattingLogVo;

public interface ChattingLogDao {
	
	List<ChattingLogVo> selectChattingLog(int chattingNumber);
	
	int insertChattingLog(ChattingLogVo chattingLog);
	
}
