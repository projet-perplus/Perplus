package com.perplus.review.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.review.dao.ReviewCommentDao;
import com.perplus.review.dao.ReviewDao;
import com.perplus.review.dao.ReviewPictureDao;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewVo;


public class ReviewServiceImpl implements ReviewService{

	@Autowired
	@Qualifier("reviewDaoImpl")
	private ReviewDao reviewDao;
	
	@Autowired
	@Qualifier("commentDaoImpl")	
	private ReviewCommentDao commentDao;
	
	@Autowired
	@Qualifier("pictureDaoImpl")
	private ReviewPictureDao pictureDao;
	
	@Override
	public void registerReview(ReviewVo review ) {
		// TODO Auto-generated method stub
		//pictureDao.insertReviewPicture(reviewPicture)
		reviewDao.insertReview(review);
	}

	@Override
	public void modifyReview(ReviewVo review) {
		reviewDao.updateReview(review);
		
	}

	@Override
	public void removeReview(int reviewSerial) {
		// TODO Auto-generated method stub	
		reviewDao.deleteReview(reviewSerial);
	}

	@Override
	public ReviewVo getReview(int reviewSerial) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
