package com.perplus.review.daoimpl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewPictureDao;
import com.perplus.review.vo.ReviewPictureVo;

@Repository
public class ReviewPictureDaoImpl implements ReviewPictureDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public ReviewPictureVo selectReviewPicturebySerial(int reviewSerial) {
		return null;
	}

	@Override
	public int updateReviewPicture(ReviewPictureVo reviewPicture) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReviewPicture(int reviewSerial) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertReviewPicture(ReviewPictureVo reviewPicture) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
