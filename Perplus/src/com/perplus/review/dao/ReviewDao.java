package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewVo;

public interface ReviewDao {
	//리뷰 insert하는 메소드(리뷰등록)
	int insertReview(ReviewVo review);
	//리뷰 조회
	ReviewVo selectReviewBySerial(int reviewSerial);
	//리뷰 수정 하는 메소드
	int updateReview(ReviewVo review);
	//리뷰 삭제 하는 메소드
	int deleteReview(int reviewSerial);
/*	//리뷰 전체 조회.
	List<ReviewVo> selectReviewWithCommentAndPicture(int reviewSerial);*/
}
