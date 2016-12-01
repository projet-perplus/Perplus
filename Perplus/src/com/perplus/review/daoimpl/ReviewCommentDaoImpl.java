package com.perplus.review.daoimpl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewCommentDao;
import com.perplus.review.vo.ReviewCommentVo;

@Repository
public class ReviewCommentDaoImpl implements ReviewCommentDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public int insertReviewComment(ReviewCommentVo reviewComment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReviewCommentVo selectReviewCommentBySerialAndEmail(int reviewSerial, String memberEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewCommentVo selectReviewCommentBySerial(int reviewSerial) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateReviewComment(ReviewCommentVo reviewComment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReviewComment(ReviewCommentVo reviewComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
