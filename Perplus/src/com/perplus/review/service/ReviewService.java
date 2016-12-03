package com.perplus.review.service;

import java.util.List;

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
	//리뷰조회
	ReviewVo getReview(int reviewSerial);
	//코멘트 조회
	List<ReviewCommentVo> getReviewCommentList(int reviewSerial);
	//코멘트 수정
	ReviewCommentVo modifyReviewComment(ReviewCommentVo reviewComment);
	//코멘트 삭제
	ReviewCommentVo removeReviewComment(int reviewSerial);
	//사진 조회
	ReviewPictureVo getReviewPicture(int reviewSerial);
	//사진 수정
	int modifyReviewPicture(ReviewPictureVo reviewPicture);
	//사진 삭제
	int removeReviewPicture(int reviewSerial);
}
