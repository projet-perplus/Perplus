package com.perplus.member.vo;

import java.util.Date;

public class ShowMeTheMoneyVo {

	private String memberEmail;
	private 	boolean showmethemoneyStatus;	//수령 완료 - true, 수령 예정 - false
	private Date showmethemoneyDate;	//결제일자;
	private String showmethemoneyKind;	// 결제 종류
	private String showmethemoneyContent;	//	결제 이벤트 발생한 숙소 이름 + 여행 기간
	private int showmethemoneyPayMoney;	//수령예정 내역 금액 (수수료 제외 전 금액) 
	private int showmethemoneyReciveMoney;	// 수령 완료 내역 금액(수수로제외 금액)
	private String showmethemoneyBank;	// 수령 예정 + 수령 완료 금액 토탈
	
	public ShowMeTheMoneyVo(){}

	public ShowMeTheMoneyVo(String memberEmail, boolean showmethemoneyStatus, Date showmethemoneyDate,
			String showmethemoneyKind, String showmethemoneyContent, int showmethemoneyPayMoney,
			int showmethemoneyReciveMoney, String showmethemoneyBank) {
		this.memberEmail = memberEmail;
		this.showmethemoneyStatus = showmethemoneyStatus;
		this.showmethemoneyDate = showmethemoneyDate;
		this.showmethemoneyKind = showmethemoneyKind;
		this.showmethemoneyContent = showmethemoneyContent;
		this.showmethemoneyPayMoney = showmethemoneyPayMoney;
		this.showmethemoneyReciveMoney = showmethemoneyReciveMoney;
		this.showmethemoneyBank = showmethemoneyBank;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public boolean isShowmethemoneyStatus() {
		return showmethemoneyStatus;
	}

	public void setShowmethemoneyStatus(boolean showmethemoneyStatus) {
		this.showmethemoneyStatus = showmethemoneyStatus;
	}

	public Date getShowmethemoneyDate() {
		return showmethemoneyDate;
	}

	public void setShowmethemoneyDate(Date showmethemoneyDate) {
		this.showmethemoneyDate = showmethemoneyDate;
	}

	public String getShowmethemoneyKind() {
		return showmethemoneyKind;
	}

	public void setShowmethemoneyKind(String showmethemoneyKind) {
		this.showmethemoneyKind = showmethemoneyKind;
	}

	public String getShowmethemoneyContent() {
		return showmethemoneyContent;
	}

	public void setShowmethemoneyContent(String showmethemoneyContent) {
		this.showmethemoneyContent = showmethemoneyContent;
	}

	public int getShowmethemoneyPayMoney() {
		return showmethemoneyPayMoney;
	}

	public void setShowmethemoneyPayMoney(int showmethemoneyPayMoney) {
		this.showmethemoneyPayMoney = showmethemoneyPayMoney;
	}

	public int getShowmethemoneyReciveMoney() {
		return showmethemoneyReciveMoney;
	}

	public void setShowmethemoneyReciveMoney(int showmethemoneyReciveMoney) {
		this.showmethemoneyReciveMoney = showmethemoneyReciveMoney;
	}

	public String getShowmethemoneyBank() {
		return showmethemoneyBank;
	}

	public void setShowmethemoneyBank(String showmethemoneyBank) {
		this.showmethemoneyBank = showmethemoneyBank;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((showmethemoneyBank == null) ? 0 : showmethemoneyBank.hashCode());
		result = prime * result + ((showmethemoneyContent == null) ? 0 : showmethemoneyContent.hashCode());
		result = prime * result + ((showmethemoneyDate == null) ? 0 : showmethemoneyDate.hashCode());
		result = prime * result + ((showmethemoneyKind == null) ? 0 : showmethemoneyKind.hashCode());
		result = prime * result + showmethemoneyPayMoney;
		result = prime * result + showmethemoneyReciveMoney;
		result = prime * result + (showmethemoneyStatus ? 1231 : 1237);
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
		ShowMeTheMoneyVo other = (ShowMeTheMoneyVo) obj;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (showmethemoneyBank == null) {
			if (other.showmethemoneyBank != null)
				return false;
		} else if (!showmethemoneyBank.equals(other.showmethemoneyBank))
			return false;
		if (showmethemoneyContent == null) {
			if (other.showmethemoneyContent != null)
				return false;
		} else if (!showmethemoneyContent.equals(other.showmethemoneyContent))
			return false;
		if (showmethemoneyDate == null) {
			if (other.showmethemoneyDate != null)
				return false;
		} else if (!showmethemoneyDate.equals(other.showmethemoneyDate))
			return false;
		if (showmethemoneyKind == null) {
			if (other.showmethemoneyKind != null)
				return false;
		} else if (!showmethemoneyKind.equals(other.showmethemoneyKind))
			return false;
		if (showmethemoneyPayMoney != other.showmethemoneyPayMoney)
			return false;
		if (showmethemoneyReciveMoney != other.showmethemoneyReciveMoney)
			return false;
		if (showmethemoneyStatus != other.showmethemoneyStatus)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ShowMeTheMoneyVo [memberEmail=" + memberEmail + ", showmethemoneyStatus=" + showmethemoneyStatus
				+ ", showmethemoneyDate=" + showmethemoneyDate + ", showmethemoneyKind=" + showmethemoneyKind
				+ ", showmethemoneyContent=" + showmethemoneyContent + ", showmethemoneyPayMoney="
				+ showmethemoneyPayMoney + ", showmethemoneyReciveMoney=" + showmethemoneyReciveMoney
				+ ", showmethemoneyBank=" + showmethemoneyBank + "]";
	}
}
