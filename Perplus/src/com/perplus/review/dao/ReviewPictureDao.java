package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewPictureVo;

public interface ReviewPictureDao {
	//리뷰 serial을 통해 사진 조회(paging)
	List<ReviewPictureVo> selectReviewPictureListPaging(int reviewSerial,int page);
	//사진 전체 조회(paging X)
	List<ReviewPictureVo> selectReviewPictureList(int reviewSerial);
	//리뷰 serial과 이름으로 해당 사진 하나 조회
	ReviewPictureVo selectReviewPictureOne(int pictureSerial);
	//리뷰 serial을 통해 사진 수정
	int updateReviewPicture(ReviewPictureVo reviewPicture);
	//리뷰 serial을 통해 사진 삭제
	int deleteReviewPicture(int pictureSerial);
	//리뷰사진 등록하는 메소드
	int insertReviewPicture(ReviewPictureVo reviewPicture);
	//해당 리뷰의 모든 사진 삭제하는 메소드
	int deleteAllReviewPicture(int reviewSerial);
	//해당 리뷰의 모든 사진 count하는 메소드
	int selectReviewPictureCount(int reviewSerial);
	
	
	
	
	
	
}
