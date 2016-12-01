package com.perplus.review.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.perplus.member.vo.MemberVo;

public class ReviewVo implements Serializable{
	private int reviewSerial;	//명소리뷰 시리얼 넘버
	private String memberEmail; //작성자 회원 이메일
	private String reviewTitle; //명소 리뷰 제목
	private String reviewContent; //명소 리뷰 내용
	private int reviewRating; //명소 평점 
	private Date reviewTime; //게시글 작성 시간
	private double reviewMakerX; //명소 지도상 위치
	private double reviewMakerY; //명소 지도상 위치
	private int reviewMakerConstant; //명소 마커 종류
	
	private List<ReviewCommentVo>reviewComment; //명소 리뷰 댓글
	private List<ReviewPictureVo>reviewPicture; //명소 리뷰 사진
	
	private MemberVo member;
	
	//생성자
	ReviewVo(){}

	public ReviewVo(int reviewSerial, String memberEmail, String reviewTitle, String reviewContent, int reviewRating,
			Date reviewTime, double reviewMakerX, double reviewMakerY, int reviewMakerConstant) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewTime = reviewTime;
		this.reviewMakerX = reviewMakerX;
		this.reviewMakerY = reviewMakerY;
		this.reviewMakerConstant = reviewMakerConstant;
	}

	public ReviewVo(int reviewSerial, String memberEmail, String reviewTitle, String reviewContent, int reviewRating,
			Date reviewTime, double reviewMakerX, double reviewMakerY, int reviewMakerConstant,
			List<ReviewCommentVo> reviewComment, List<ReviewPictureVo> reviewPicture) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewTime = reviewTime;
		this.reviewMakerX = reviewMakerX;
		this.reviewMakerY = reviewMakerY;
		this.reviewMakerConstant = reviewMakerConstant;
		this.reviewComment = reviewComment;
		this.reviewPicture = reviewPicture;
	}

	public ReviewVo(int reviewSerial, String memberEmail, String reviewTitle, String reviewContent, int reviewRating,
			Date reviewTime, double reviewMakerX, double reviewMakerY, int reviewMakerConstant,
			List<ReviewCommentVo> reviewComment, List<ReviewPictureVo> reviewPicture, MemberVo member) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewTime = reviewTime;
		this.reviewMakerX = reviewMakerX;
		this.reviewMakerY = reviewMakerY;
		this.reviewMakerConstant = reviewMakerConstant;
		this.reviewComment = reviewComment;
		this.reviewPicture = reviewPicture;
		this.member = member;
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

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}

	public Date getReviewTime() {
		return reviewTime;
	}

	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}

	public double getReviewMakerX() {
		return reviewMakerX;
	}

	public void setReviewMakerX(double reviewMakerX) {
		this.reviewMakerX = reviewMakerX;
	}

	public double getReviewMakerY() {
		return reviewMakerY;
	}

	public void setReviewMakerY(double reviewMakerY) {
		this.reviewMakerY = reviewMakerY;
	}

	public int getReviewMakerConstant() {
		return reviewMakerConstant;
	}

	public void setReviewMakerConstant(int reviewMakerConstant) {
		this.reviewMakerConstant = reviewMakerConstant;
	}

	public List<ReviewCommentVo> getReviewComment() {
		return reviewComment;
	}

	public void setReviewComment(List<ReviewCommentVo> reviewComment) {
		this.reviewComment = reviewComment;
	}

	public List<ReviewPictureVo> getReviewPicture() {
		return reviewPicture;
	}

	public void setReviewPicture(List<ReviewPictureVo> reviewPicture) {
		this.reviewPicture = reviewPicture;
	}

	public MemberVo getMember() {
		return member;
	}

	public void setMember(MemberVo member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "ReviewVo [reviewSerial=" + reviewSerial + ", memberEmail=" + memberEmail + ", reviewTitle="
				+ reviewTitle + ", reviewContent=" + reviewContent + ", reviewRating=" + reviewRating + ", reviewTime="
				+ reviewTime + ", reviewMakerX=" + reviewMakerX + ", reviewMakerY=" + reviewMakerY
				+ ", reviewMakerConstant=" + reviewMakerConstant + ", reviewComment=" + reviewComment
				+ ", reviewPicture=" + reviewPicture + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((reviewComment == null) ? 0 : reviewComment.hashCode());
		result = prime * result + ((reviewContent == null) ? 0 : reviewContent.hashCode());
		result = prime * result + reviewMakerConstant;
		long temp;
		temp = Double.doubleToLongBits(reviewMakerX);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(reviewMakerY);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((reviewPicture == null) ? 0 : reviewPicture.hashCode());
		result = prime * result + reviewRating;
		result = prime * result + reviewSerial;
		result = prime * result + ((reviewTime == null) ? 0 : reviewTime.hashCode());
		result = prime * result + ((reviewTitle == null) ? 0 : reviewTitle.hashCode());
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
		ReviewVo other = (ReviewVo) obj;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (reviewComment == null) {
			if (other.reviewComment != null)
				return false;
		} else if (!reviewComment.equals(other.reviewComment))
			return false;
		if (reviewContent == null) {
			if (other.reviewContent != null)
				return false;
		} else if (!reviewContent.equals(other.reviewContent))
			return false;
		if (reviewMakerConstant != other.reviewMakerConstant)
			return false;
		if (Double.doubleToLongBits(reviewMakerX) != Double.doubleToLongBits(other.reviewMakerX))
			return false;
		if (Double.doubleToLongBits(reviewMakerY) != Double.doubleToLongBits(other.reviewMakerY))
			return false;
		if (reviewPicture == null) {
			if (other.reviewPicture != null)
				return false;
		} else if (!reviewPicture.equals(other.reviewPicture))
			return false;
		if (reviewRating != other.reviewRating)
			return false;
		if (reviewSerial != other.reviewSerial)
			return false;
		if (reviewTime == null) {
			if (other.reviewTime != null)
				return false;
		} else if (!reviewTime.equals(other.reviewTime))
			return false;
		if (reviewTitle == null) {
			if (other.reviewTitle != null)
				return false;
		} else if (!reviewTitle.equals(other.reviewTitle))
			return false;
		return true;
	}
	
	


	
}
