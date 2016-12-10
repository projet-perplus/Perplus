package com.perplus.review.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public class ReviewPictureVo implements Serializable{
	private int pictureSerial;//사진 시리얼 번호
	private int reviewSerial; //리뷰 시리얼 넘버
	private int pictureOrder;  //사진의 순서. (main사진이 1번~~)
	private String pictureName; //사진 이름
	
	private List<MultipartFile> pictureList;
	//생성자
	public ReviewPictureVo(){}

	

	public ReviewPictureVo(List<MultipartFile> pictureList) {
		super();
		this.pictureList = pictureList;
	}



	public ReviewPictureVo(int pictureSerial, int reviewSerial, int pictureOrder, String pictureName) {
		super();
		this.pictureSerial = pictureSerial;
		this.reviewSerial = reviewSerial;
		this.pictureOrder = pictureOrder;
		this.pictureName = pictureName;
	}


	public int getPictureSerial() {
		return pictureSerial;
	}


	public void setPictureSerial(int pictureSerial) {
		this.pictureSerial = pictureSerial;
	}


	public int getReviewSerial() {
		return reviewSerial;
	}


	public void setReviewSerial(int reviewSerial) {
		this.reviewSerial = reviewSerial;
	}


	public int getPictureOrder() {
		return pictureOrder;
	}


	public void setPictureOrder(int pictureOrder) {
		this.pictureOrder = pictureOrder;
	}


	public String getPictureName() {
		return pictureName;
	}


	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}


	public List<MultipartFile>getPictureList() {
		return pictureList;
	}


	public void setPictureList(List<MultipartFile> pictureList) {
		this.pictureList = pictureList;
	}



	@Override
	public String toString() {
		return "ReviewPictureVo [pictureSerial=" + pictureSerial + ", reviewSerial=" + reviewSerial + ", pictureOrder="
				+ pictureOrder + ", pictureName=" + pictureName + ", pictureList=" + pictureList + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((pictureList == null) ? 0 : pictureList.hashCode());
		result = prime * result + ((pictureName == null) ? 0 : pictureName.hashCode());
		result = prime * result + pictureOrder;
		result = prime * result + pictureSerial;
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
		ReviewPictureVo other = (ReviewPictureVo) obj;
		if (pictureList == null) {
			if (other.pictureList != null)
				return false;
		} else if (!pictureList.equals(other.pictureList))
			return false;
		if (pictureName == null) {
			if (other.pictureName != null)
				return false;
		} else if (!pictureName.equals(other.pictureName))
			return false;
		if (pictureOrder != other.pictureOrder)
			return false;
		if (pictureSerial != other.pictureSerial)
			return false;
		if (reviewSerial != other.reviewSerial)
			return false;
		return true;
	}

}
