package com.perplus.member.daoimpl;
import java.util.HashMap;
//1
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.util.Constants;

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
		return session.delete("houseComment.deleteHouseComment",commentSerial);
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
	public List<HouseCommentVo> selectHouseCommentBySerial(int houseSerial,int page){
		Map<String,Object> map = new HashMap<>();
		
		map.put("houseSerial", houseSerial);
		map.put("commentPerPage", Constants.REVIEWCOMMENT_PER_PAGE);
		map.put("page", page);
		return session.selectList("houseComment.selectHouseCommentBySerial",map);
	}
	
	
	@Override
	public int selectHouseCommentCount(int houseSerial) {
		return session.selectOne("houseComment.selectHouseCommentCount",houseSerial);
	}

	public List<HouseCommentVo> selectHouseCommentJoinHouse(String memberEmail){
		return session.selectList("houseComment.houseCommentJoinHouse" ,memberEmail);
	}
	
	public int deleteAllCommentBySerial(int houseSerial){
		return session.delete("houseComment.deleteAllHouseComment",houseSerial);
	}
	
}
