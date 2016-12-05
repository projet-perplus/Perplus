package com.perplus.house.vo;

import java.io.Serializable;

public class HousePictureVo implements Serializable {
	private int pictureSerial;
	private int houseSerial;
	private int pictureOrder;
	private String pictureName;
	
	public HousePictureVo() {
		// TODO Auto-generated constructor stub
	}

	public HousePictureVo(int pictureSerial, int houseSerial, int pictureOrder, String pictureName) {
		super();
		this.pictureSerial = pictureSerial;
		this.houseSerial = houseSerial;
		this.pictureOrder = pictureOrder;
		this.pictureName = pictureName;
	}

	public int getPictureSerial() {
		return pictureSerial;
	}

	public void setPictureSerial(int pictureSerial) {
		this.pictureSerial = pictureSerial;
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
	public String toString() {
		return "HousePictureVo [pictureSerial=" + pictureSerial + ", houseSerial=" + houseSerial + ", pictureOrder="
				+ pictureOrder + ", pictureName=" + pictureName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		result = prime * result + ((pictureName == null) ? 0 : pictureName.hashCode());
		result = prime * result + pictureOrder;
		result = prime * result + pictureSerial;
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
		if (pictureSerial != other.pictureSerial)
			return false;
		return true;
	}
	
	
}
