package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewCommentVo;

public interface ReviewCommentDao {
	//리뷰 코멘트 등록하는 메소드
	int insertReviewComment(ReviewCommentVo reviewComment);
	//해당 리뷰 코멘트 하나 조회하는 메소드
	ReviewCommentVo selectReviewCommentBySerial(int commentSerial);
	//해당 리뷰에 있는 모든 리뷰 코멘트 조회하는 메소드(paging처리)
	List<ReviewCommentVo> selectReviewCommentListBySerial(int reviewSerial, int page);
	//해당 리뷰의 총 리뷰 코멘트 수 count하는 메소드
	int selectReviewCommentCount(int reviewSerial);
	//해당 리뷰 코멘트 수정하는 메소드
	int updateReviewComment(ReviewCommentVo reviewComment);
	//해당 리뷰 코멘트 삭제하는 메소드.
	int deleteReviewComment(int commentSerial);
	//리뷰 삭제 시 해당 리뷰 코멘트 모두 삭제하는 메소드
	int deleteAllReviewComment(int reviewSerial);
}
