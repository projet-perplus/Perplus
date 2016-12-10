package com.perplus.house.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

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
	private int houseFilterCheckinTerm;
	private Date houseFilterCheckinStart;
	private Date houseFilterCheckinEnd;
	private int houseFilterReservationTerm;
	private int houseFilterBakMin;
	private int houseFilterBakMax;
	private int houseFilterPrice;
	
	private List<ShutdownVo> shutdownList;
	private List<CheckListVo> checkList;
	
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

	public HouseFilterVo(int houseSerial, String houseFilterRange, int houseFilterGuestNumber, String houseFilterType,
			int houseFilterRoomNumber, String houseFilterLocation, int houseFilterBedroomNumber,
			int houseFilterBathroomNumber, int houseFilterBedNumber, int houseFilterCheckinTerm,
			Date houseFilterCheckinStart, Date houseFilterCheckinEnd, int houseFilterReservationTerm,
			int houseFilterBakMin, int houseFilterBakMax, int houseFilterPrice, List<ShutdownVo> shutdownList,
			List<CheckListVo> checkList) {
		super();
		this.houseSerial = houseSerial;
		this.houseFilterRange = houseFilterRange;
		this.houseFilterGuestNumber = houseFilterGuestNumber;
		this.houseFilterType = houseFilterType;
		this.houseFilterRoomNumber = houseFilterRoomNumber;
		this.houseFilterLocation = houseFilterLocation;
		this.houseFilterBedroomNumber = houseFilterBedroomNumber;
		this.houseFilterBathroomNumber = houseFilterBathroomNumber;
		this.houseFilterBedNumber = houseFilterBedNumber;
		this.houseFilterCheckinTerm = houseFilterCheckinTerm;
		this.houseFilterCheckinStart = houseFilterCheckinStart;
		this.houseFilterCheckinEnd = houseFilterCheckinEnd;
		this.houseFilterReservationTerm = houseFilterReservationTerm;
		this.houseFilterBakMin = houseFilterBakMin;
		this.houseFilterBakMax = houseFilterBakMax;
		this.houseFilterPrice = houseFilterPrice;
		this.shutdownList = shutdownList;
		this.checkList = checkList;
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

	public int getHouseFilterCheckinTerm() {
		return houseFilterCheckinTerm;
	}

	public void setHouseFilterCheckinTerm(int houseFilterCheckinTerm) {
		this.houseFilterCheckinTerm = houseFilterCheckinTerm;
	}

	public Date getHouseFilterCheckinStart() {
		return houseFilterCheckinStart;
	}

	public void setHouseFilterCheckinStart(Date houseFilterCheckinStart) {
		this.houseFilterCheckinStart = houseFilterCheckinStart;
	}

	public Date getHouseFilterCheckinEnd() {
		return houseFilterCheckinEnd;
	}

	public void setHouseFilterCheckinEnd(Date houseFilterCheckinEnd) {
		this.houseFilterCheckinEnd = houseFilterCheckinEnd;
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

	public int getHouseFilterPrice() {
		return houseFilterPrice;
	}

	public void setHouseFilterPrice(int houseFilterPrice) {
		this.houseFilterPrice = houseFilterPrice;
	}

	public List<ShutdownVo> getShutdownList() {
		return shutdownList;
	}

	public void setShutdownList(List<ShutdownVo> shutdownList) {
		this.shutdownList = shutdownList;
	}

	public List<CheckListVo> getCheckList() {
		return checkList;
	}

	public void setCheckList(List<CheckListVo> checkList) {
		this.checkList = checkList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((checkList == null) ? 0 : checkList.hashCode());
		result = prime * result + houseFilterBakMax;
		result = prime * result + houseFilterBakMin;
		result = prime * result + houseFilterBathroomNumber;
		result = prime * result + houseFilterBedNumber;
		result = prime * result + houseFilterBedroomNumber;
		result = prime * result + ((houseFilterCheckinEnd == null) ? 0 : houseFilterCheckinEnd.hashCode());
		result = prime * result + ((houseFilterCheckinStart == null) ? 0 : houseFilterCheckinStart.hashCode());
		result = prime * result + houseFilterCheckinTerm;
		result = prime * result + houseFilterGuestNumber;
		result = prime * result + ((houseFilterLocation == null) ? 0 : houseFilterLocation.hashCode());
		result = prime * result + houseFilterPrice;
		result = prime * result + ((houseFilterRange == null) ? 0 : houseFilterRange.hashCode());
		result = prime * result + houseFilterReservationTerm;
		result = prime * result + houseFilterRoomNumber;
		result = prime * result + ((houseFilterType == null) ? 0 : houseFilterType.hashCode());
		result = prime * result + houseSerial;
		result = prime * result + ((shutdownList == null) ? 0 : shutdownList.hashCode());
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
		if (checkList == null) {
			if (other.checkList != null)
				return false;
		} else if (!checkList.equals(other.checkList))
			return false;
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
		if (houseFilterCheckinEnd == null) {
			if (other.houseFilterCheckinEnd != null)
				return false;
		} else if (!houseFilterCheckinEnd.equals(other.houseFilterCheckinEnd))
			return false;
		if (houseFilterCheckinStart == null) {
			if (other.houseFilterCheckinStart != null)
				return false;
		} else if (!houseFilterCheckinStart.equals(other.houseFilterCheckinStart))
			return false;
		if (houseFilterCheckinTerm != other.houseFilterCheckinTerm)
			return false;
		if (houseFilterGuestNumber != other.houseFilterGuestNumber)
			return false;
		if (houseFilterLocation == null) {
			if (other.houseFilterLocation != null)
				return false;
		} else if (!houseFilterLocation.equals(other.houseFilterLocation))
			return false;
		if (houseFilterPrice != other.houseFilterPrice)
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
		if (houseSerial != other.houseSerial)
			return false;
		if (shutdownList == null) {
			if (other.shutdownList != null)
				return false;
		} else if (!shutdownList.equals(other.shutdownList))
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
				+ ", houseFilterCheckinTerm=" + houseFilterCheckinTerm + ", houseFilterCheckinStart="
				+ houseFilterCheckinStart + ", houseFilterCheckinEnd=" + houseFilterCheckinEnd
				+ ", houseFilterReservationTerm=" + houseFilterReservationTerm + ", houseFilterBakMin="
				+ houseFilterBakMin + ", houseFilterBakMax=" + houseFilterBakMax + ", houseFilterPrice="
				+ houseFilterPrice + ", shutdownList=" + shutdownList + ", checkList=" + checkList + "]";
	}

	
	
}
