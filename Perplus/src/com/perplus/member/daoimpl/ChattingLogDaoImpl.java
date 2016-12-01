package com.perplus.member.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ChattingLogDao;
import com.perplus.member.vo.ChattingLogVo;

@Repository
public class ChattingLogDaoImpl implements ChattingLogDao{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public List<ChattingLogVo> selectChattingLog(int chattingNumber) {
		return session.selectList("chattinglog.insertchattinglog",chattingNumber);
	}

	public int insertChattingLog(ChattingLogVo chattingLog) {
		return session.insert("chattinglog.insertchattinglog", chattingLog);
	}
	
}
