package com.perplus.member.daoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ChattingDao;
import com.perplus.member.vo.ChattingVo;

@Repository
public class ChattingDaoImpl implements ChattingDao{

	@Autowired
	public List<ChattingVo> selectMyChatting(String memberEmail) {
		return null;
	}
	
	
	public int findByChattingNumber(String memberEmail, String chattingPartner) {
		return 0;
	}
	
}
