package com.perplus.member.vo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class PayInfoVo implements Serializable{
	private int travelSerial;	// 숙박 번호
	private String memberEmail;	// 결제한 사람 이메일
	private Date payInfoDate;	// 결제일
	private int payInfoPerMoney;	// 하루당 결제 금액
	private int payInfoTotalMoney;	// 총 결제 금액
	
	public PayInfoVo() {}

	public PayInfoVo(int travelSerial, String memberEmail, Date payInfoDate, int payInfoPerMoney,
			int payInfoTotalMoney) {
		this.travelSerial = travelSerial;
		this.memberEmail = memberEmail;
		this.payInfoDate = payInfoDate;
		this.payInfoPerMoney = payInfoPerMoney;
		this.payInfoTotalMoney = payInfoTotalMoney;
	}

	public int getTravelSerial() {
		return travelSerial;
	}

	public void setTravelSerial(int travelSerial) {
		this.travelSerial = travelSerial;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public Date getPayInfoDate() {
		return payInfoDate;
	}

	public void setPayInfoDate(Date payInfoDate) {
		this.payInfoDate = payInfoDate;
	}

	public int getPayInfoPerMoney() {
		return payInfoPerMoney;
	}

	public void setPayInfoPerMoney(int payInfoPerMoney) {
		this.payInfoPerMoney = payInfoPerMoney;
	}

	public int getPayInfoTotalMoney() {
		return payInfoTotalMoney;
	}

	public void setPayInfoTotalMoney(int payInfoTotalMoney) {
		this.payInfoTotalMoney = payInfoTotalMoney;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((payInfoDate == null) ? 0 : payInfoDate.hashCode());
		result = prime * result + payInfoPerMoney;
		result = prime * result + payInfoTotalMoney;
		result = prime * result + travelSerial;
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
		PayInfoVo other = (PayInfoVo) obj;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (payInfoDate == null) {
			if (other.payInfoDate != null)
				return false;
		} else if (!payInfoDate.equals(other.payInfoDate))
			return false;
		if (payInfoPerMoney != other.payInfoPerMoney)
			return false;
		if (payInfoTotalMoney != other.payInfoTotalMoney)
			return false;
		if (travelSerial != other.travelSerial)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PayInfoVo [travelSerial=" + travelSerial + ", memberEmail=" + memberEmail + ", payInfoDate="
				+ payInfoDate + ", payInfoPerMoney=" + payInfoPerMoney + ", payInfoTotalMoney=" + payInfoTotalMoney
				+ "]";
	}
}
