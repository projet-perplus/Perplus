package com.perplus.review.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.review.dao.ReviewCommentDao;
import com.perplus.review.dao.ReviewDao;
import com.perplus.review.dao.ReviewPictureDao;
import com.perplus.review.daoimpl.ReviewCommentDaoImpl;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;

@Service
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
	public void registerReview(Map map ) {
		List<ReviewPictureVo> reviewPicture = (List<ReviewPictureVo>) map.get("list");
		reviewDao.insertReview((ReviewVo)map.get("review"));
		for(int i=0; i <reviewPicture.size();i++){
			reviewPictureDao.insertReviewPicture(reviewPicture.get(i));
		}
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
	public List<ReviewVo> getReview(int reviewSerial) {
		return reviewDao.selectReviewWithCommentAndPicture(reviewSerial);
	}

	@Override
	public void modifyReviewComment(ReviewCommentVo reviewComment) {
		reviewCommentDao.updateReviewComment(reviewComment);
	}

	@Override
	public List<ReviewCommentVo> getReviewCommentList(int reviewSerial) {
		return reviewCommentDao.selectReviewCommentListBySerial(reviewSerial);
	}
	
	@Override
	public ReviewCommentVo getMyComment(int reviewSerial, String memberEmail) {
		return reviewCommentDao.selectReviewCommentBySerialAndEmail(reviewSerial, memberEmail);
	}

	@Override
	public void removeReviewComment(int reviewSerial, String memberEmail) {
		reviewCommentDao.deleteReviewComment(reviewSerial, memberEmail);
	}

	@Override
	public List<ReviewPictureVo> getReviewPictureList(int reviewSerial) {
		return reviewPictureDao.selectReviewPicturebySerial(reviewSerial);
	}
	
	@Override
	public ReviewPictureVo getReviewPicture(int reviewSerial, String pictureName) {
		return reviewPictureDao.selectReviewPictureOne(reviewSerial, pictureName);
	}

	@Override
	public void modifyReviewPicture(ReviewPictureVo reviewPicture) {
		reviewPictureDao.updateReviewPicture(reviewPicture);
	}

	@Override
	public void removeReviewPicture(int reviewSerial,String pictureName) {
		reviewPictureDao.deleteReviewPicture(reviewSerial, pictureName);
	}
	
}
