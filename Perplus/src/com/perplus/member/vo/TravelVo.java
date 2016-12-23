package com.perplus.member.vo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import com.perplus.house.vo.HouseVo;

public class TravelVo implements Serializable{
	private int travelSerial;	// 숙박 번호
	private int travelCode;	//현재 or 과거 여행
	private int houseSerial;
	private String memberEmail;
	private Date travelStart;	//숙박 시작 날짜
	private Date travelEnd;	//숙박 종료 날짜
	private int travelNumber;	// 숙박 인원
	private Timestamp travelCheckin; // 첫날 입실 시간
	private int travelCost;
	
	private HouseVo house;
	
	public TravelVo() {}

	public TravelVo(int travelSerial, int travelCode, int houseSerial, String memberEmail){	// 코드, 하우스 시리얼, 멤버 이메일
		this.travelCode = travelCode;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
	}

	public TravelVo(int travelSerial, int travelCode, int houseSerial, String memberEmail, Date travelStart,
			Date travelEnd, int travelNumber, Timestamp travelCheckin, int travelCost) {
		this.travelSerial = travelSerial;
		this.travelCode = travelCode;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
		this.travelStart = travelStart;
		this.travelEnd = travelEnd;
		this.travelNumber = travelNumber;
		this.travelCheckin = travelCheckin;
		this.travelCost = travelCost;
	}
	
	

	public TravelVo(int travelSerial, int travelCode, int houseSerial, String memberEmail, Date travelStart,
			Date travelEnd, int travelNumber, Timestamp travelCheckin, int travelCost, HouseVo house) {
		this.travelSerial = travelSerial;
		this.travelCode = travelCode;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
		this.travelStart = travelStart;
		this.travelEnd = travelEnd;
		this.travelNumber = travelNumber;
		this.travelCheckin = travelCheckin;
		this.travelCost = travelCost;
		this.house = house;
	}

	
	
	public HouseVo getHouse() {
		return house;
	}

	public void setHouse(HouseVo house) {
		this.house = house;
	}

	public int getTravelSerial() {
		return travelSerial;
	}

	public void setTravelSerial(int travelSerial) {
		this.travelSerial = travelSerial;
	}

	public int getTravelCode() {
		return travelCode;
	}

	public void setTravelCode(int travelCode) {
		this.travelCode = travelCode;
	}

	public int getHouseSerial() {
		return houseSerial;
	}

	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public Date getTravelStart() {
		return travelStart;
	}

	public void setTravelStart(Date travelStart) {
		this.travelStart = travelStart;
	}

	public Date getTravelEnd() {
		return travelEnd;
	}

	public void setTravelEnd(Date travelEnd) {
		this.travelEnd = travelEnd;
	}

	public int getTravelNumber() {
		return travelNumber;
	}

	public void setTravelNumber(int travelNumber) {
		this.travelNumber = travelNumber;
	}

	public Timestamp getTravelCheckin() {
		return travelCheckin;
	}

	public void setTravelCheckin(Timestamp travelCheckin) {
		this.travelCheckin = travelCheckin;
	}

	public int getTravelCost() {
		return travelCost;
	}

	public void setTravelCost(int travelCost) {
		this.travelCost = travelCost;
	}

	@Override
	public String toString() {
		return "TravelVo [travelSerial=" + travelSerial + ", travelCode=" + travelCode + ", houseSerial=" + houseSerial
				+ ", memberEmail=" + memberEmail + ", travelStart=" + travelStart + ", travelEnd=" + travelEnd
				+ ", travelNumber=" + travelNumber + ", travelCheckin=" + travelCheckin + ", travelCost=" + travelCost
				+ ", house=" + house + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((house == null) ? 0 : house.hashCode());
		result = prime * result + houseSerial;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((travelCheckin == null) ? 0 : travelCheckin.hashCode());
		result = prime * result + travelCode;
		result = prime * result + travelCost;
		result = prime * result + ((travelEnd == null) ? 0 : travelEnd.hashCode());
		result = prime * result + travelNumber;
		result = prime * result + travelSerial;
		result = prime * result + ((travelStart == null) ? 0 : travelStart.hashCode());
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
		TravelVo other = (TravelVo) obj;
		if (house == null) {
			if (other.house != null)
				return false;
		} else if (!house.equals(other.house))
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (travelCheckin == null) {
			if (other.travelCheckin != null)
				return false;
		} else if (!travelCheckin.equals(other.travelCheckin))
			return false;
		if (travelCode != other.travelCode)
			return false;
		if (travelCost != other.travelCost)
			return false;
		if (travelEnd == null) {
			if (other.travelEnd != null)
				return false;
		} else if (!travelEnd.equals(other.travelEnd))
			return false;
		if (travelNumber != other.travelNumber)
			return false;
		if (travelSerial != other.travelSerial)
			return false;
		if (travelStart == null) {
			if (other.travelStart != null)
				return false;
		} else if (!travelStart.equals(other.travelStart))
			return false;
		return true;
	}

	
}
