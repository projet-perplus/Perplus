package com.perplus.validator;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;


public class ReviewForm {
	@NotEmpty
	private String reviewTitle;
	@NotEmpty
	private String reviewContent;
	@NotNull
	private int reviewRating;
	@NotNull
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date reviewTime;

	private double reviewMarkerX;

	private double reviewMarkerY;

	private int reviewMarkerConstant;
	@NotEmpty
	private String reviewPlace;
	
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
	@Override
	public String toString() {
		return "ReviewForm [reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", reviewRating="
				+ reviewRating + ", reviewTime=" + reviewTime + ", reviewMarkerX=" + reviewMarkerX + ", reviewMarkerY="
				+ reviewMarkerY + ", reviewMarkerConstant=" + reviewMarkerConstant + ", reviewPlace=" + reviewPlace
				+ "]";
	}
	
	
	
}
