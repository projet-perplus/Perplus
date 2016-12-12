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

	@Override//하우스 코멘트 등록하기
	public int insertHouseComment(HouseCommentVo houseComment) {
		return session.insert("houseComment.insertHouseComment",houseComment);
	}

	@Override//하우스 코멘트 삭제하기
	public int deleteHouseComment(int commentSerial) {
		return session.insert("houseComment.removeHouseComment",commentSerial);
	}

	@Override//하우스 코멘트 수정하기
	public int modifyHouseComment(HouseCommentVo houseComment) {
		return session.update("houseComment.updateHouseComment",houseComment);
	}
	
	@Override//email로 코멘트 찾기(나의 댓글 보기)
	public List<HouseCommentVo> selectHouseCommentByEmail(String memberEmail){
		return session.selectList("houseComment.selectHouseCommentByEmail", memberEmail);
	}
	
	@Override//serial로 코멘트 찾기(상세화면 뿌려주기)
	public List<HouseCommentVo> selectHouseCommentBySerial(int houseSerial){
		return session.selectList("houseComment.selectHouseCommentBySerial",houseSerial);
	}
	
	
	
	
}
