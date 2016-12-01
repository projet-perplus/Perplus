package com.perplus.review.daoimpl;

import com.perplus.review.dao.ReviewDao;
import com.perplus.review.vo.ReviewVo;

public class ReviewDaoImpl implements ReviewDao{

	@Override
	public int insertReview(ReviewVo review) {
		// TODO Auto-generated method stub
		return 0;
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
		return 0;
	}
	
}
