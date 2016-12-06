package com.perplus.review.serviceimpl;

import java.util.HashMap;
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
import com.perplus.util.PagingBean;

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
	public void removeReview(int reviewSerial){
		reviewCommentDao.deleteAllReviewComment(reviewSerial);
		reviewPictureDao.deleteAllReviewPicture(reviewSerial);
		reviewDao.deleteReview(reviewSerial);
	}

	@Override
	public ReviewVo getReview(int reviewSerial) {
		return reviewDao.selectReviewBySerial(reviewSerial);
	}

	@Override
	public void modifyReviewComment(ReviewCommentVo reviewComment) {
		reviewCommentDao.updateReviewComment(reviewComment);
	}

	@Override
	public Map<String,Object> getReviewCommentList(int reviewSerial,int page) {
		Map<String,Object> map = new HashMap<>();
		List<ReviewCommentVo> list =reviewCommentDao.selectReviewCommentListBySerial(reviewSerial, page);
		map.put("list",list);
		map.put("reviewSerial", reviewSerial);
		int totalComments = reviewCommentDao.selectReviewCommentCount(reviewSerial);
		PagingBean bean = new PagingBean(totalComments, page);
		map.put("pageBean", bean);
		return map;
	}
	
	@Override
	public ReviewCommentVo getMyComment(int commentSerial) {
		return reviewCommentDao.selectReviewCommentBySerial(commentSerial);
	}

	@Override
	public void removeReviewComment(int commentSerial) {
		reviewCommentDao.deleteReviewComment(commentSerial);
	}

	@Override
	public Map<String,Object> getReviewPictureListPaging(int reviewSerial, int page) {
		Map<String,Object> map = new HashMap<>();
		List<ReviewPictureVo> list =reviewPictureDao.selectReviewPictureListPaging(reviewSerial, page);
		map.put("list",list);
		map.put("reviewSerial", reviewSerial);

		int totalPictures = reviewPictureDao.selectReviewPictureCount(reviewSerial);
		PagingBean bean = new PagingBean(totalPictures, page);
		map.put("pageBean", bean);
		return map;
	}
	
	@Override
	public List<ReviewPictureVo> getReviewPictureList(int reviewSerial) {
		return reviewPictureDao.selectReviewPictureList(reviewSerial);
	}

	@Override
	public ReviewPictureVo getReviewPicture(int pictureSerial) {
		return reviewPictureDao.selectReviewPictureOne(pictureSerial);
	}

	@Override
	public void modifyReviewPicture(ReviewPictureVo reviewPicture) {
		reviewPictureDao.updateReviewPicture(reviewPicture);
	}

	@Override
	public void removeReviewPicture(int reviewSerial) {
		reviewPictureDao.deleteReviewPicture(reviewSerial);
	}
	
	
}
