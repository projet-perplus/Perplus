package com.perplus.member.daoimpl;
//1
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.vo.HouseCommentVo;

@Repository
public class HouseCommentDaoImpl implements HouseCommentDao{
	
	@Autowired
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
	
	public List<HouseCommentVo> selectHouseComment(Map<String, Object> map){
		return session.selectList("houseComment.selectHouseComment", map);
	}
	
	
	
	
}
