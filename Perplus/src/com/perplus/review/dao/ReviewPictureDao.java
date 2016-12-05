package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewPictureVo;

public interface ReviewPictureDao {
	//리뷰 사진 전체 조회 하는 메소드(paging 처리 0)
	List<ReviewPictureVo> selectReviewPictureListPaging(int reviewSerial,int page);
	//리뷰 사진 전체 조회 하는 메소드(paging 처리 X)
	List<ReviewPictureVo> selectReviewPictureList(int reviewSerial);
	//리뷰 해당 사진 조회하는 메소드
	ReviewPictureVo selectReviewPictureOne(int pictureSerial);
	//해당 리뷰 사진 수정 하는 메소드
	int updateReviewPicture(ReviewPictureVo reviewPicture);
	//해당 리뷰 사진 삭제 하는 메소드
	int deleteReviewPicture(int pictureSerial);
	//해당 리뷰 사진 등록하는 메소드
	int insertReviewPicture(ReviewPictureVo reviewPicture);
	//해당 리뷰의 모든 리뷰 사진 삭제하는 메소드
	int deleteAllReviewPicture(int reviewSerial);
	//해당 리뷰의 모든 리뷰 사진 count하는 메소드
	int selectReviewPictureCount(int reviewSerial);
	
	
	
	
	
	
}
