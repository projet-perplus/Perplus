package com.perplus.member.vo;

import com.perplus.house.vo.HouseVo;

public class HouseZzimVo {
	private int housezzimSerial;
	private int houseSerial;
	private String memberEmail;
	private HouseVo house;
	
	public HouseZzimVo(int housezzimSerial, int houseSerial, String memberEmail, HouseVo house) {
		this.housezzimSerial = housezzimSerial;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
		this.house = house;
	}
	public HouseZzimVo() {
	}
	public HouseZzimVo(int housezzimSerial, int houseSerial, String memberEmail) {
		this.housezzimSerial = housezzimSerial;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
	}
	public int getHouseZzimSerial() {
		return housezzimSerial;
	}
	public void setHouseZzimSerial(int housezzimSerial) {
		this.housezzimSerial = housezzimSerial;
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
	public HouseVo getHouse() {
		return house;
	}
	public void setHouse(HouseVo house) {
		this.house = house;
	}
	@Override
	public String toString() {
		return "HouseZzimVo [housezzimSerial=" + housezzimSerial + ", houseSerial=" + houseSerial + ", memberEmail="
				+ memberEmail + ", house=" + house + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((house == null) ? 0 : house.hashCode());
		result = prime * result + houseSerial;
		result = prime * result + housezzimSerial;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
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
		HouseZzimVo other = (HouseZzimVo) obj;
		if (house == null) {
			if (other.house != null)
				return false;
		} else if (!house.equals(other.house))
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		if (housezzimSerial != other.housezzimSerial)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		return true;
	}
	
	
}
