package com.perplus.member.daoimpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ReviewZzimDao;
import com.perplus.member.vo.ReviewZzimVo;
@Repository
public class ReviewZzimDaoImpl implements ReviewZzimDao{

	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public int insertReviewZzim(ReviewZzimVo reviewZzim) {
		// TODO Auto-generated method stub
		return session.insert("reviewZzim.insertReviewZzim", reviewZzim);
	}
	@Override
	public int deleteReviewZzim(int reviewZzimSerial) {
		// TODO Auto-generated method stub
		return session.delete("reviewZzim.deleteReviewZzim", reviewZzimSerial);
	}
	@Override
	public List<ReviewZzimVo> selectReviewZzimByMemberEmail(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectList("reviewZzim.selectReviewZzimByMemberEmail", memberEmail);
	}

	@Override
	public ReviewZzimVo selectReviewZzimByMemberEmailAndreviewSerial(String memberEmail, int reviewSerial) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("memberEmail", memberEmail);
		map.put("reviewSerial", reviewSerial);
		return session.selectOne("reviewZzim.selectReviewZzimByMemberEmailAndreviewSerial",map);
	}

	@Override
	public ReviewZzimVo selectReviewZzimByReviewZzimSerial(int reviewZzimSerial) {
		return session.selectOne("reviewZzim.selectReviewZzimByReviewZzimSerial",reviewZzimSerial);
	}
	
	
}
