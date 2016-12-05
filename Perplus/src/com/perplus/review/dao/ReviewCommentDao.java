package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewCommentVo;

public interface ReviewCommentDao {
	//리뷰 댓글 insert하는 메소드
	int insertReviewComment(ReviewCommentVo reviewComment);
	//해당 댓글 조회
	ReviewCommentVo selectReviewCommentBySerial(int commentSerial);
	//리뷰 serial을 통해 댓글전체 조회(paging처리)
	List<ReviewCommentVo> selectReviewCommentListBySerial(int reviewSerial, int page);
	//해당 리뷰의 총 댓글 count
	int selectReviewCommentCount(int reviewSerial);
	//리뷰 댓글 수정
	int updateReviewComment(ReviewCommentVo reviewComment);
	//댓글 삭제
	int deleteReviewComment(int commentSerial);
	//해당 리뷰의 모든 댓글 삭제
	int deleteAllReviewComment(int reviewSerial);
}
