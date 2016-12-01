package com.perplus.review.daoimpl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewDao;
import com.perplus.review.vo.ReviewVo;

@Repository
public class ReviewDaoImpl implements ReviewDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public int insertReview(ReviewVo review) {
		// 리뷰 등록하는 메소드
		return session.insert("review.insertReview", review);
	}

	@Override
	public ReviewVo selectReviewBySerialAndEmail(int reviewSerial, String memberEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewVo selectReviewBySerial(int reviewSerial) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateReview(ReviewVo review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeReview(int reviewSerial, String memberEmail) {
		// TODO Auto-generated method stub
		Map map = new HashMap<>();
		map.put("reviewSerial", reviewSerial);
		map.put("memberEmail",memberEmail);
		
		return session.delete("review.deleteReview", map);
	}
	
}
