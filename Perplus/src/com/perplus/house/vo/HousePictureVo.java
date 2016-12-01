package com.perplus.house.vo;

import java.io.Serializable;

public class HousePictureVo implements Serializable {
	private int houseSerial;
	private int pictureOrder;
	private String pictureName;
	public HousePictureVo(int houseSerial, int pictureOrder, String pictureName) {
		super();
		this.houseSerial = houseSerial;		//해당 집의 고유번호
		this.pictureOrder = pictureOrder;	//사진의 출력 순서 (첫장이 default로 썸네일 등에 출력)
		this.pictureName = pictureName;		//서버에서 사진을 불러올때 사용하는 파일 이름
	}
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
		HousePictureVo other = (HousePictureVo) obj;
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
	@Override
	public String toString() {
		return "HousePictureVo [houseSerial=" + houseSerial + ", pictureOrder=" + pictureOrder + ", pictureName="
				+ pictureName + "]";
	}
	
	
}
