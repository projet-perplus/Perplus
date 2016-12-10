package com.perplus.review.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.perplus.member.vo.MemberVo;

public class ReviewVo implements Serializable{
	private int reviewSerial;	//명소리뷰 시리얼 넘버
	private String memberEmail; //작성자 회원 이메일
	private String reviewTitle; //명소 리뷰 제목
	private String reviewContent; //명소 리뷰 내용
	private int reviewRating; //명소 평점 
	private Date reviewTime; //게시글 작성 시간
	private double reviewMarkerX; //명소 지도상 위치
	private double reviewMarkerY; //명소 지도상 위치
	private int reviewMarkerConstant; //명소 마커 종류
	private String reviewPlace;
	
	private List<ReviewCommentVo>reviewComment; //명소 리뷰 댓글
	private List<ReviewPictureVo>reviewPicture; //명소 리뷰 사진
	
	private MemberVo member;
	
	//생성자
	public ReviewVo(){}


	public ReviewVo(int reviewSerial, String memberEmail, String reviewTitle, String reviewContent, int reviewRating,
			Date reviewTime, double reviewMarkerX, double reviewMarkerY, int reviewMarkerConstant, String reviewPlace) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewTime = reviewTime;
		this.reviewMarkerX = reviewMarkerX;
		this.reviewMarkerY = reviewMarkerY;
		this.reviewMarkerConstant = reviewMarkerConstant;
		this.reviewPlace = reviewPlace;
	}



	public ReviewVo(int reviewSerial, String memberEmail, String reviewTitle, String reviewContent, int reviewRating,
			Date reviewTime, double reviewMarkerX, double reviewMarkerY, int reviewMarkerConstant, String reviewPlace,
			List<ReviewCommentVo> reviewComment, List<ReviewPictureVo> reviewPicture) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewTime = reviewTime;
		this.reviewMarkerX = reviewMarkerX;
		this.reviewMarkerY = reviewMarkerY;
		this.reviewMarkerConstant = reviewMarkerConstant;
		this.reviewPlace = reviewPlace;
		this.reviewComment = reviewComment;
		this.reviewPicture = reviewPicture;
	}


	
	public ReviewVo(int reviewSerial, String memberEmail, String reviewTitle, String reviewContent, int reviewRating,
			Date reviewTime, double reviewMarkerX, double reviewMarkerY, int reviewMarkerConstant, String reviewPlace,
			List<ReviewCommentVo> reviewComment, List<ReviewPictureVo> reviewPicture, MemberVo member) {
		super();
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewTime = reviewTime;
		this.reviewMarkerX = reviewMarkerX;
		this.reviewMarkerY = reviewMarkerY;
		this.reviewMarkerConstant = reviewMarkerConstant;
		this.reviewPlace = reviewPlace;
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


	public double getReviewMarkerX() {
		return reviewMarkerX;
	}


	public void setReviewMarkerX(double reviewMarkerX) {
		this.reviewMarkerX = reviewMarkerX;
	}


	public double getReviewMarkerY() {
		return reviewMarkerY;
	}


	public void setReviewMarkerY(double reviewMarkerY) {
		this.reviewMarkerY = reviewMarkerY;
	}


	public int getReviewMarkerConstant() {
		return reviewMarkerConstant;
	}


	public void setReviewMarkerConstant(int reviewMarkerConstant) {
		this.reviewMarkerConstant = reviewMarkerConstant;
	}


	public String getReviewPlace() {
		return reviewPlace;
	}


	public void setReviewPlace(String reviewPlace) {
		this.reviewPlace = reviewPlace;
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
				+ reviewTime + ", reviewMarkerX=" + reviewMarkerX + ", reviewMarkerY=" + reviewMarkerY
				+ ", reviewMarkerConstant=" + reviewMarkerConstant + ", reviewPlace=" + reviewPlace + ", reviewComment="
				+ reviewComment + ", reviewPicture=" + reviewPicture + ", member=" + member + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((member == null) ? 0 : member.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((reviewComment == null) ? 0 : reviewComment.hashCode());
		result = prime * result + ((reviewContent == null) ? 0 : reviewContent.hashCode());
		result = prime * result + reviewMarkerConstant;
		long temp;
		temp = Double.doubleToLongBits(reviewMarkerX);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(reviewMarkerY);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((reviewPicture == null) ? 0 : reviewPicture.hashCode());
		result = prime * result + ((reviewPlace == null) ? 0 : reviewPlace.hashCode());
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
		if (member == null) {
			if (other.member != null)
				return false;
		} else if (!member.equals(other.member))
			return false;
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
		if (reviewMarkerConstant != other.reviewMarkerConstant)
			return false;
		if (Double.doubleToLongBits(reviewMarkerX) != Double.doubleToLongBits(other.reviewMarkerX))
			return false;
		if (Double.doubleToLongBits(reviewMarkerY) != Double.doubleToLongBits(other.reviewMarkerY))
			return false;
		if (reviewPicture == null) {
			if (other.reviewPicture != null)
				return false;
		} else if (!reviewPicture.equals(other.reviewPicture))
			return false;
		if (reviewPlace == null) {
			if (other.reviewPlace != null)
				return false;
		} else if (!reviewPlace.equals(other.reviewPlace))
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
