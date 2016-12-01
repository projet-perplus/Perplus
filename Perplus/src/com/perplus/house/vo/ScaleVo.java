package com.perplus.house.vo;

import java.io.Serializable;

public class ScaleVo implements Serializable{
	private int houseSerial;		
	private int scaleBedroomNumber;
	private int scaleBathroomNumber;
	private int scaleBedNumber;
	public ScaleVo(int houseSerial, int scaleBedroomNumber, int scaleBathroomNumber, int scaleBedNumber) {
		super();
		this.houseSerial = houseSerial;
		this.scaleBedroomNumber = scaleBedroomNumber;
		this.scaleBathroomNumber = scaleBathroomNumber;
		this.scaleBedNumber = scaleBedNumber;
	}
	public int getHouseSerial() {
		return houseSerial;
	}
	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}
	public int getScaleBedroomNumber() {
		return scaleBedroomNumber;
	}
	public void setScaleBedroomNumber(int scaleBedroomNumber) {
		this.scaleBedroomNumber = scaleBedroomNumber;
	}
	public int getScaleBathroomNumber() {
		return scaleBathroomNumber;
	}
	public void setScaleBathroomNumber(int scaleBathroomNumber) {
		this.scaleBathroomNumber = scaleBathroomNumber;
	}
	public int getScaleBedNumber() {
		return scaleBedNumber;
	}
	public void setScaleBedNumber(int scaleBedNumber) {
		this.scaleBedNumber = scaleBedNumber;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		result = prime * result + scaleBathroomNumber;
		result = prime * result + scaleBedNumber;
		result = prime * result + scaleBedroomNumber;
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
		ScaleVo other = (ScaleVo) obj;
		if (houseSerial != other.houseSerial)
			return false;
		if (scaleBathroomNumber != other.scaleBathroomNumber)
			return false;
		if (scaleBedNumber != other.scaleBedNumber)
			return false;
		if (scaleBedroomNumber != other.scaleBedroomNumber)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ScaleVo [houseSerial=" + houseSerial + ", scaleBedroomNumber=" + scaleBedroomNumber
				+ ", scaleBathroomNumber=" + scaleBathroomNumber + ", scaleBedNumber=" + scaleBedNumber + "]";
	}
}
