package com.perplus.member.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ChattingDao;
import com.perplus.member.vo.ChattingVo;

@Repository
public class ChattingDaoImpl implements ChattingDao{
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	public List<ChattingVo> selectMyChatting(String memberEmail) {
		return null;
	}
	
	
	public int findByChattingNumber(String memberEmail, String chattingPartner) {
		return 0;
	}
	
}
