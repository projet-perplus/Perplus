package com.perplus.review.dao;

import com.perplus.review.vo.ReviewPictureVo;

public interface ReviewPictureDao {
	//리뷰 serial을 통해 사진 조회
	ReviewPictureVo selectReviewPicturebySerial(int reviewSerial);
	//리뷰 serial을 통해 사진 수정
	int updateReviewPicture(ReviewPictureVo reviewPicture);
	//리뷰 serial을 통해 사진 삭제
	int deleteReviewPicture(int reviewSerial);
	//리뷰사진 등록
	int insertReviewPicture(ReviewPictureVo reviewPicture);
}
