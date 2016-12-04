package com.perplus.house.vo;

import java.io.Serializable;

public class HouseFilterVo implements Serializable{
	private int houseSerial;
	private String houseFilterRange;
	private int houseFilterGuestNumber;
	private String houseFilterType;
	private int houseFilterRoomNumber;
	private String houseFilterLocation;
	private int houseFilterBedroomNumber;
	private int houseFilterBathroomNumber;
	private int houseFilterBedNumber;
	private int houseFiltercheckinTerm;
	private int houseFilterReservationTerm;
	private int houseFilterBakMin;
	private int houseFilterBakMax;
	private int houseFilterMoneyMin;
	private int houseFilterMoneyMax;
	
	public HouseFilterVo() {}
	
	public HouseFilterVo(int houseSerial, String houseFilterRange, int houseFilterGuestNumber, String houseFilterType,
			int houseFilterRoomNumber, String houseFilterLocation) {
		super();
		this.houseSerial = houseSerial;
		this.houseFilterRange = houseFilterRange;
		this.houseFilterGuestNumber = houseFilterGuestNumber;
		this.houseFilterType = houseFilterType;
		this.houseFilterRoomNumber = houseFilterRoomNumber;
		this.houseFilterLocation = houseFilterLocation;
	}
	public int getHouseSerial() {
		return houseSerial;
	}
	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}
	public String getHouseFilterRange() {
		return houseFilterRange;
	}
	public void setHouseFilterRange(String houseFilterRange) {
		this.houseFilterRange = houseFilterRange;
	}
	public int getHouseFilterGuestNumber() {
		return houseFilterGuestNumber;
	}
	public void setHouseFilterGuestNumber(int houseFilterGuestNumber) {
		this.houseFilterGuestNumber = houseFilterGuestNumber;
	}
	public String getHouseFilterType() {
		return houseFilterType;
	}
	public void setHouseFilterType(String houseFilterType) {
		this.houseFilterType = houseFilterType;
	}
	public int getHouseFilterRoomNumber() {
		return houseFilterRoomNumber;
	}
	public void setHouseFilterRoomNumber(int houseFilterRoomNumber) {
		this.houseFilterRoomNumber = houseFilterRoomNumber;
	}
	public String getHouseFilterLocation() {
		return houseFilterLocation;
	}
	public void setHouseFilterLocation(String houseFilterLocation) {
		this.houseFilterLocation = houseFilterLocation;
	}
	public int getHouseFilterBedroomNumber() {
		return houseFilterBedroomNumber;
	}
	public void setHouseFilterBedroomNumber(int houseFilterBedroomNumber) {
		this.houseFilterBedroomNumber = houseFilterBedroomNumber;
	}
	public int getHouseFilterBathroomNumber() {
		return houseFilterBathroomNumber;
	}
	public void setHouseFilterBathroomNumber(int houseFilterBathroomNumber) {
		this.houseFilterBathroomNumber = houseFilterBathroomNumber;
	}
	public int getHouseFilterBedNumber() {
		return houseFilterBedNumber;
	}
	public void setHouseFilterBedNumber(int houseFilterBedNumber) {
		this.houseFilterBedNumber = houseFilterBedNumber;
	}
	public int getHouseFiltercheckinTerm() {
		return houseFiltercheckinTerm;
	}
	public void setHouseFiltercheckinTerm(int houseFiltercheckinTerm) {
		this.houseFiltercheckinTerm = houseFiltercheckinTerm;
	}
	public int getHouseFilterReservationTerm() {
		return houseFilterReservationTerm;
	}
	public void setHouseFilterReservationTerm(int houseFilterReservationTerm) {
		this.houseFilterReservationTerm = houseFilterReservationTerm;
	}
	public int getHouseFilterBakMin() {
		return houseFilterBakMin;
	}
	public void setHouseFilterBakMin(int houseFilterBakMin) {
		this.houseFilterBakMin = houseFilterBakMin;
	}
	public int getHouseFilterBakMax() {
		return houseFilterBakMax;
	}
	public void setHouseFilterBakMax(int houseFilterBakMax) {
		this.houseFilterBakMax = houseFilterBakMax;
	}
	public int getHouseFilterMoneyMin() {
		return houseFilterMoneyMin;
	}
	public void setHouseFilterMoneyMin(int houseFilterMoneyMin) {
		this.houseFilterMoneyMin = houseFilterMoneyMin;
	}
	public int getHouseFilterMoneyMax() {
		return houseFilterMoneyMax;
	}
	public void setHouseFilterMoneyMax(int houseFilterMoneyMax) {
		this.houseFilterMoneyMax = houseFilterMoneyMax;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseFilterBakMax;
		result = prime * result + houseFilterBakMin;
		result = prime * result + houseFilterBathroomNumber;
		result = prime * result + houseFilterBedNumber;
		result = prime * result + houseFilterBedroomNumber;
		result = prime * result + houseFilterGuestNumber;
		result = prime * result + ((houseFilterLocation == null) ? 0 : houseFilterLocation.hashCode());
		result = prime * result + houseFilterMoneyMax;
		result = prime * result + houseFilterMoneyMin;
		result = prime * result + ((houseFilterRange == null) ? 0 : houseFilterRange.hashCode());
		result = prime * result + houseFilterReservationTerm;
		result = prime * result + houseFilterRoomNumber;
		result = prime * result + ((houseFilterType == null) ? 0 : houseFilterType.hashCode());
		result = prime * result + houseFiltercheckinTerm;
		result = prime * result + houseSerial;
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
		if (houseFilterBakMax != other.houseFilterBakMax)
			return false;
		if (houseFilterBakMin != other.houseFilterBakMin)
			return false;
		if (houseFilterBathroomNumber != other.houseFilterBathroomNumber)
			return false;
		if (houseFilterBedNumber != other.houseFilterBedNumber)
			return false;
		if (houseFilterBedroomNumber != other.houseFilterBedroomNumber)
			return false;
		if (houseFilterGuestNumber != other.houseFilterGuestNumber)
			return false;
		if (houseFilterLocation == null) {
			if (other.houseFilterLocation != null)
				return false;
		} else if (!houseFilterLocation.equals(other.houseFilterLocation))
			return false;
		if (houseFilterMoneyMax != other.houseFilterMoneyMax)
			return false;
		if (houseFilterMoneyMin != other.houseFilterMoneyMin)
			return false;
		if (houseFilterRange == null) {
			if (other.houseFilterRange != null)
				return false;
		} else if (!houseFilterRange.equals(other.houseFilterRange))
			return false;
		if (houseFilterReservationTerm != other.houseFilterReservationTerm)
			return false;
		if (houseFilterRoomNumber != other.houseFilterRoomNumber)
			return false;
		if (houseFilterType == null) {
			if (other.houseFilterType != null)
				return false;
		} else if (!houseFilterType.equals(other.houseFilterType))
			return false;
		if (houseFiltercheckinTerm != other.houseFiltercheckinTerm)
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "HouseFilterVo [houseSerial=" + houseSerial + ", houseFilterRange=" + houseFilterRange
				+ ", houseFilterGuestNumber=" + houseFilterGuestNumber + ", houseFilterType=" + houseFilterType
				+ ", houseFilterRoomNumber=" + houseFilterRoomNumber + ", houseFilterLocation=" + houseFilterLocation
				+ ", houseFilterBedroomNumber=" + houseFilterBedroomNumber + ", houseFilterBathroomNumber="
				+ houseFilterBathroomNumber + ", houseFilterBedNumber=" + houseFilterBedNumber
				+ ", houseFiltercheckinTerm=" + houseFiltercheckinTerm + ", houseFilterReservationTerm="
				+ houseFilterReservationTerm + ", houseFilterBakMin=" + houseFilterBakMin + ", houseFilterBakMax="
				+ houseFilterBakMax + ", houseFilterMoneyMin=" + houseFilterMoneyMin + ", houseFilterMoneyMax="
				+ houseFilterMoneyMax + "]";
	}
	
	
	
}
