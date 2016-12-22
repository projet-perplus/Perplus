
package com.perplus.member.vo;

import java.util.List;

public class HowmoneyVo {
	private int accountSerial;
	private String memberEmail;
	private String howmoneyHolder;
	private String howmoneyBank;
	private String howmoneyNumber;
	
	private List<ShowmoneyVo> showmoneyList;

	public HowmoneyVo(int accountSerial, String memberEmail, String howmoneyHolder, String howmoneyBank,
			String howmoneyNumber, List<ShowmoneyVo> showmoneyList) {
		this.accountSerial = accountSerial;
		this.memberEmail = memberEmail;
		this.howmoneyHolder = howmoneyHolder;
		this.howmoneyBank = howmoneyBank;
		this.howmoneyNumber = howmoneyNumber;
		this.showmoneyList = showmoneyList;
	}

	public HowmoneyVo() {
	}

	public HowmoneyVo(int accountSerial, String memberEmail, String howmoneyHolder, String howmoneyBank,
			String howmoneyNumber) {
		this.accountSerial = accountSerial;
		this.memberEmail = memberEmail;
		this.howmoneyHolder = howmoneyHolder;
		this.howmoneyBank = howmoneyBank;
		this.howmoneyNumber = howmoneyNumber;
	}

	public int getAccountSerial() {
		return accountSerial;
	}

	public void setAccountSerial(int accountSerial) {
		this.accountSerial = accountSerial;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getHowmoneyHolder() {
		return howmoneyHolder;
	}

	public void setHowmoneyHolder(String howmoneyHolder) {
		this.howmoneyHolder = howmoneyHolder;
	}

	public String getHowmoneyBank() {
		return howmoneyBank;
	}

	public void setHowmoneyBank(String howmoneyBank) {
		this.howmoneyBank = howmoneyBank;
	}

	public String getHowmoneyNumber() {
		return howmoneyNumber;
	}

	public void setHowmoneyNumber(String howmoneyNumber) {
		this.howmoneyNumber = howmoneyNumber;
	}

	public List<ShowmoneyVo> getShowmoneyList() {
		return showmoneyList;
	}

	public void setShowmoneyList(List<ShowmoneyVo> showmoneyList) {
		this.showmoneyList = showmoneyList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + accountSerial;
		result = prime * result + ((howmoneyBank == null) ? 0 : howmoneyBank.hashCode());
		result = prime * result + ((howmoneyHolder == null) ? 0 : howmoneyHolder.hashCode());
		result = prime * result + ((howmoneyNumber == null) ? 0 : howmoneyNumber.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((showmoneyList == null) ? 0 : showmoneyList.hashCode());
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
		HowmoneyVo other = (HowmoneyVo) obj;
		if (accountSerial != other.accountSerial)
			return false;
		if (howmoneyBank == null) {
			if (other.howmoneyBank != null)
				return false;
		} else if (!howmoneyBank.equals(other.howmoneyBank))
			return false;
		if (howmoneyHolder == null) {
			if (other.howmoneyHolder != null)
				return false;
		} else if (!howmoneyHolder.equals(other.howmoneyHolder))
			return false;
		if (howmoneyNumber == null) {
			if (other.howmoneyNumber != null)
				return false;
		} else if (!howmoneyNumber.equals(other.howmoneyNumber))
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (showmoneyList == null) {
			if (other.showmoneyList != null)
				return false;
		} else if (!showmoneyList.equals(other.showmoneyList))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "HowMoneyVo [accountSerial=" + accountSerial + ", memberEmail=" + memberEmail + ", howmoneyHolder="
				+ howmoneyHolder + ", howmoneyBank=" + howmoneyBank + ", howmoneyNumber=" + howmoneyNumber
				+ ", showmoneyList=" + showmoneyList + "]";
	}
	
	
	
}
