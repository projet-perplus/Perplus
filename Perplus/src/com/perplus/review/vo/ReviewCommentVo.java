package com.perplus.review.vo;

import java.io.Serializable;
import java.util.Date;

public class ReviewCommentVo implements Serializable{
	private int reviewSerial;	//명소 리뷰 시리얼 
	private String memberEmail; //리뷰 댓글 게시자 회원 이메일
	private String commentContent; // 댓글 내용
	private int commentRating; //리뷰 글 평점
	private Date commentTime; //리뷰 댓글 시간
	
	private ReviewVo review;

	private ReviewCommentVo(){}
	
	public ReviewCommentVo(int reviewSerial, String memberEmail, String commentContent, int commentRating,
			Date commentTime) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.commentContent = commentContent;
		this.commentRating = commentRating;
		this.commentTime = commentTime;
	}

	public ReviewCommentVo(int reviewSerial, String memberEmail, String commentContent, int commentRating,
			Date commentTime, ReviewVo review) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.commentContent = commentContent;
		this.commentRating = commentRating;
		this.commentTime = commentTime;
		this.review = review;
	}
	

	public int getReviewSerial() {
		return reviewSerial;
	}

	public void setReviewSerial(int reviewSerial) {
		this.reviewSerial = reviewSerial;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public int getCommentRating() {
		return commentRating;
	}

	public void setCommentRating(int commentRating) {
		this.commentRating = commentRating;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public ReviewVo getReview() {
		return review;
	}

	public void setReview(ReviewVo review) {
		this.review = review;
	}

	@Override
	public String toString() {
		return "ReviewCommentVo [reviewSerial=" + reviewSerial + ", memberEmail=" + memberEmail + ", commentContent="
				+ commentContent + ", commentRating=" + commentRating + ", commentTime=" + commentTime + ", review="
				+ review + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + commentRating;
		result = prime * result + ((commentTime == null) ? 0 : commentTime.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((review == null) ? 0 : review.hashCode());
		result = prime * result + reviewSerial;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReviewCommentVo other = (ReviewCommentVo) obj;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentRating != other.commentRating)
			return false;
		if (commentTime == null) {
			if (other.commentTime != null)
				return false;
		} else if (!commentTime.equals(other.commentTime))
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (review == null) {
			if (other.review != null)
				return false;
		} else if (!review.equals(other.review))
			return false;
		if (reviewSerial != other.reviewSerial)
			return false;
		return true;
	}
	
	
	
}
