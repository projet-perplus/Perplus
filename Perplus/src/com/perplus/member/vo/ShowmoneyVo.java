package com.perplus.member.vo;

import java.util.Date;

public class ShowmoneyVo {

	private int travelSerial;	// 예약정보 시리얼
	private String memberEmail;	// 해당 멤버 이메일
	private int accountSerial;	// 결제 정보 시리얼
	private 	int showmoneyStatus;	//수령 완료 - 1, 수령 예정 - 0
	private int showmoneyTotalMoney;	// 수령 완료 금액
	private int showmoneyReciveMoney;	// 수령 예정 금액
	
	public ShowmoneyVo() {}

	public ShowmoneyVo(int travelSerial, String memberEmail, int accountSerial, int showmoneyStatus,
			int showmoneyTotalMoney, int showmoneyReciveMoney) {
		this.travelSerial = travelSerial;
		this.memberEmail = memberEmail;
		this.accountSerial = accountSerial;
		this.showmoneyStatus = showmoneyStatus;
		this.showmoneyTotalMoney = showmoneyTotalMoney;
		this.showmoneyReciveMoney = showmoneyReciveMoney;
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

	public int getAccountSerial() {
		return accountSerial;
	}

	public void setAccountSerial(int accountSerial) {
		this.accountSerial = accountSerial;
	}

	public int getShowmoneyStatus() {
		return showmoneyStatus;
	}

	public void setShowmoneyStatus(int showmoneyStatus) {
		this.showmoneyStatus = showmoneyStatus;
	}

	public int getShowmoneyTotalMoney() {
		return showmoneyTotalMoney;
	}

	public void setShowmoneyTotalMoney(int showmoneyTotalMoney) {
		this.showmoneyTotalMoney = showmoneyTotalMoney;
	}

	public int getShowmoneyReciveMoney() {
		return showmoneyReciveMoney;
	}

	public void setShowmoneyReciveMoney(int showmoneyReciveMoney) {
		this.showmoneyReciveMoney = showmoneyReciveMoney;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + accountSerial;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + showmoneyReciveMoney;
		result = prime * result + showmoneyStatus;
		result = prime * result + showmoneyTotalMoney;
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
		ShowmoneyVo other = (ShowmoneyVo) obj;
		if (accountSerial != other.accountSerial)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (showmoneyReciveMoney != other.showmoneyReciveMoney)
			return false;
		if (showmoneyStatus != other.showmoneyStatus)
			return false;
		if (showmoneyTotalMoney != other.showmoneyTotalMoney)
			return false;
		if (travelSerial != other.travelSerial)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ShowMeTheMoneyVo [travelSerial=" + travelSerial + ", memberEmail=" + memberEmail + ", accountSerial="
				+ accountSerial + ", showmoneyStatus=" + showmoneyStatus + ", showmoneyTotalMoney="
				+ showmoneyTotalMoney + ", showmoneyReciveMoney=" + showmoneyReciveMoney + "]";
	}
}
