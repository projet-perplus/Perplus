package com.perplus.review.vo;

import java.io.Serializable;


public class ReviewPictureVo implements Serializable{
	private int houseSerial; //숙소 시리얼 넘버
	private int pictureOrder;  //사진의 순서. (main사진이 1번~~)
	private String pictureName; //사진 이름
	
	//생성자
	ReviewPictureVo(){}

	public ReviewPictureVo(int houseSerial, int pictureOrder, String pictureName) {
		super();
		this.houseSerial = houseSerial;
		this.pictureOrder = pictureOrder;
		this.pictureName = pictureName;
	}

	//setter/getter
	public int getHouseSerial() {
		return houseSerial;
	}

	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
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

	//toString()
	@Override
	public String toString() {
		return "ReviewPictureVo [houseSerial=" + houseSerial + ", pictureOrder=" + pictureOrder + ", pictureName="
				+ pictureName + "]";
	}

	//hashCode() / equals()
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		result = prime * result + ((pictureName == null) ? 0 : pictureName.hashCode());
		result = prime * result + pictureOrder;
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
		if (houseSerial != other.houseSerial)
			return false;
		if (pictureName == null) {
			if (other.pictureName != null)
				return false;
		} else if (!pictureName.equals(other.pictureName))
			return false;
		if (pictureOrder != other.pictureOrder)
			return false;
		return true;
	}


	
	
	
	
}
