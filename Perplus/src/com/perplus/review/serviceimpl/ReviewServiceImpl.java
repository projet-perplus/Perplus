package com.perplus.review.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.review.dao.ReviewCommentDao;
import com.perplus.review.dao.ReviewDao;
import com.perplus.review.dao.ReviewPictureDao;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;


public class ReviewServiceImpl implements ReviewService{

	@Autowired
	@Qualifier("reviewDaoImpl")
	private ReviewDao reviewDao;
	
	@Autowired
	@Qualifier("reviewCommentDaoImpl")	
	private ReviewCommentDao reviewCommentDao;
	
	@Autowired
	@Qualifier("reviewPictureDaoImpl")
	private ReviewPictureDao reviewPictureDao;
	
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

	@Override
	public ReviewCommentVo getReviewComment(int reviewSerial) {
		return reviewCommentDao.selectReviewCommentBySerial(reviewSerial);
	}

	@Override
	public ReviewCommentVo modifyReviewComment(ReviewCommentVo reviewComment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewCommentVo removeReviewComment(int reviewSerial) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewPictureVo getReviewPicture(int reviewSerial) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modifyReviewPicture(ReviewPictureVo reviewPicture) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeReviewPicture(int reviewSerial) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
