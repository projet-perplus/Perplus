package com.perplus.member.vo;

public class HouseZzimVo {
	private int houseZzimSerial;
	private int houseSerial;
	private String memberEmail;
	public HouseZzimVo(int houseZzimSerial,int houseSerial, String memberEmail) {
		this.houseZzimSerial = houseZzimSerial;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
	}
	public HouseZzimVo() {
	}
	
	public int getHouseZzimSerial() {
		return houseZzimSerial;
	}
	public void setHouseZzimSerial(int houseZzimSerial) {
		this.houseZzimSerial = houseZzimSerial;
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
	@Override
	public String toString() {
		return "HouseZzimVo [houseZzimSerial=" + houseZzimSerial + ", houseSerial=" + houseSerial + ", memberEmail="
				+ memberEmail + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		result = prime * result + houseZzimSerial;
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
		if (houseSerial != other.houseSerial)
			return false;
		if (houseZzimSerial != other.houseZzimSerial)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		return true;
	}

	
}
