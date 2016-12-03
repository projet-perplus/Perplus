package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewPictureVo;

public interface ReviewPictureDao {
	//리뷰 serial을 통해 사진 조회
	List<ReviewPictureVo> selectReviewPicturebySerial(int reviewSerial);
	//리뷰 serial을 통해 사진 수정
	int updateReviewPicture(ReviewPictureVo reviewPicture);
	//리뷰 serial을 통해 사진 삭제
	int deleteReviewPicture(int reviewSerial,String pictureName);
	//리뷰사진 등록하는 메소드
	int insertReviewPicture(ReviewPictureVo reviewPicture);
	
	
	
	
	
	
	
}
