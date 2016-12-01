package com.perplus.house.vo;

import java.io.Serializable;

public class HouseFilterVo implements Serializable{
	private int houseSerial;
	private String houseRange;
	private int houseGuestNumber;
	private String houseType;
	private int houseRoomNumber;
	private String houseLocation;
	public HouseFilterVo(int houseSerial, String houseRange, int houseGuestNumber, String houseType,
			int houseRoomNumber, String houseLocation) {
		super();
		this.houseSerial = houseSerial;
		this.houseRange = houseRange;
		this.houseGuestNumber = houseGuestNumber;
		this.houseType = houseType;
		this.houseRoomNumber = houseRoomNumber;
		this.houseLocation = houseLocation;
	}
	public int getHouseSerial() {
		return houseSerial;
	}
	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}
	public String getHouseRange() {
		return houseRange;
	}
	public void setHouseRange(String houseRange) {
		this.houseRange = houseRange;
	}
	public int getHouseGuestNumber() {
		return houseGuestNumber;
	}
	public void setHouseGuestNumber(int houseGuestNumber) {
		this.houseGuestNumber = houseGuestNumber;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public int getHouseRoomNumber() {
		return houseRoomNumber;
	}
	public void setHouseRoomNumber(int houseRoomNumber) {
		this.houseRoomNumber = houseRoomNumber;
	}
	public String getHouseLocation() {
		return houseLocation;
	}
	public void setHouseLocation(String houseLocation) {
		this.houseLocation = houseLocation;
	}
	@Override
	public String toString() {
		return "HouseFilterVo [houseSerial=" + houseSerial + ", houseRange=" + houseRange + ", houseGuestNumber="
				+ houseGuestNumber + ", houseType=" + houseType + ", houseRoomNumber=" + houseRoomNumber
				+ ", houseLocation=" + houseLocation + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseGuestNumber;
		result = prime * result + ((houseLocation == null) ? 0 : houseLocation.hashCode());
		result = prime * result + ((houseRange == null) ? 0 : houseRange.hashCode());
		result = prime * result + houseRoomNumber;
		result = prime * result + houseSerial;
		result = prime * result + ((houseType == null) ? 0 : houseType.hashCode());
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
		HouseFilterVo other = (HouseFilterVo) obj;
		if (houseGuestNumber != other.houseGuestNumber)
			return false;
		if (houseLocation == null) {
			if (other.houseLocation != null)
				return false;
		} else if (!houseLocation.equals(other.houseLocation))
			return false;
		if (houseRange == null) {
			if (other.houseRange != null)
				return false;
		} else if (!houseRange.equals(other.houseRange))
			return false;
		if (houseRoomNumber != other.houseRoomNumber)
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		if (houseType == null) {
			if (other.houseType != null)
				return false;
		} else if (!houseType.equals(other.houseType))
			return false;
		return true;
	}
	
	
}
