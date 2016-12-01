package com.perplus.member.daoimpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ChattingDao;
import com.perplus.member.vo.ChattingVo;

@Repository
public class ChattingDaoImpl implements ChattingDao{
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	public int creatChatting(ChattingVo chatting){
		return session.insert("",chatting);
	}
	
	public List<ChattingVo> selectMyChatting(String memberEmail) {
		return session.selectList("",memberEmail);
	}
	
	public int findByChattingNumber(Map<String, Object> map){
		return session.selectOne("",map);
	}
	
}
