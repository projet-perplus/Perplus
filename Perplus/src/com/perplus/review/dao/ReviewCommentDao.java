package com.perplus.review.dao;

import java.util.List;

import com.perplus.review.vo.ReviewCommentVo;

public interface ReviewCommentDao {
	//리뷰 댓글 insert하는 메소드
	int insertReviewComment(ReviewCommentVo reviewComment);
	//리뷰 serial / 댓글 등록한 회원 email을 통해서 댓글 조회하는 메소드
	ReviewCommentVo selectReviewCommentBySerialAndEmail(int reviewSerial, String memberEmail);
	//리뷰 serial을 통해 댓글전체 조회
	List<ReviewCommentVo> selectReviewCommentListBySerial(int reviewSerial);
	//리뷰 serial / 댓글 등록한 회원 email을 통해서 댓글 수정
	int updateReviewComment(ReviewCommentVo reviewComment);
	//리뷰 serial / 댓글 등록한 회원 email을 통해서 댓글 삭제
	int deleteReviewComment(int reviewSerial,String memberEmail);
	
}
