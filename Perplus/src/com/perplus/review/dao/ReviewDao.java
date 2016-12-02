package com.perplus.review.dao;

import com.perplus.review.vo.ReviewVo;

public interface ReviewDao {
	//리뷰 insert하는 메소드(리뷰등록)
	int insertReview(ReviewVo review);
/*	//리뷰 등록한 회원 email / 리뷰시리얼을 통해 리뷰 조회하는 메소드
	ReviewVo selectReviewBySerialAndEmail(int reviewSerial, String memberEmail);*/
	//리뷰 serial을 통해서 리뷰 조회
	ReviewVo selectReviewBySerial(int reviewSerial);
	//리뷰 등록한 회원 email / 리뷰시리얼을 통해 리뷰 수정 하는 메소드
	int updateReview(ReviewVo review);
	//리뷰 등록한 회원 email / 리뷰 시리얼을 통해 리뷰 삭제 하는 메소드
	int deleteReview(int reviewSerial);
	
}
