package com.perplus.review.service;

import java.util.List;
import java.util.Map;

import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;

public interface ReviewService {
	//리뷰등록
	void registerReview(ReviewVo review);
	//리뷰수정
	void modifyReview(ReviewVo review);
	//리뷰삭제
	void removeReview(int reviewSerial);
	//리뷰상세조회
	ReviewVo getReview(int reviewSerial);
	//내가 작성한 리뷰 조회(email로 조회)
	List<ReviewVo>getMyReview(String memberEmail);
	//리뷰 전체 조회
	List<ReviewVo>getReviewList();
	//코멘트 전체 조회(paging처리)
	Map<String,Object> getReviewCommentList(int reviewSerial, int page);
	//코멘트 조회
	ReviewCommentVo getMyComment(int reviewSerial);
	//코멘트 수정
	void modifyReviewComment(ReviewCommentVo reviewComment);
	//코멘트 삭제
	void removeReviewComment(int commentSerial);
	//코멘트 등록
	void registerReviewComment(ReviewCommentVo reviewComment);
	//사진등록
	void registerReviewPicture(ReviewPictureVo reviewPicture);
	//사진 전체 조회(paging처리)
	Map<String,Object> getReviewPictureListPaging(int reviewSerial,int page);
	//사진 전체 조회(paging처리 X)
	List<ReviewPictureVo> getReviewPictureList(int reviewSerial);
	//해당 사진 하나만 조회하기.
	ReviewPictureVo getReviewPicture(int pictureSerial);
	//사진 수정
	void modifyReviewPicture(List<ReviewPictureVo> reviewPictures);
	//사진 삭제
	void removeReviewPicture(int reviewSerial);
}
