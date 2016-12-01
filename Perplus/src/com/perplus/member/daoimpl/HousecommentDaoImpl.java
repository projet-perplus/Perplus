package com.perplus.member.daoimpl;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.vo.HouseCommentVo;

@Repository
public class HousecommentDaoImpl implements HouseCommentDao{
	
	private SqlSessionTemplate session;

	@Override
	public int insertHouseComment(HouseCommentVo houseComment) {
		return session.insert("houseComment.insertHouseComment",houseComment);
	}

	@Override
	public int deleteHouseComment(Map<String, Object> map) {
		return session.insert("houseComment.removeHouseComment",map);
	}

	@Override
	public int modifyHouseComment(HouseCommentVo houseComment) {
		return session.update("houseComment.updateHouseComment",houseComment);
	}
	
	
	
	
	
}
