package com.perplus.member.vo;

public class HowGetMoneyVo {
	private String memberEmail;
	private String howgetmoneyHolder;
	private String howgetmoneyBank;
	private int howgetmoneyNumber;
	
	
	public HowGetMoneyVo(String memberEmail, String howGetMoneyHolder, String howGetMoneyBank, int howGetMoneyNumber) {
		this.memberEmail = memberEmail;
		this.howgetmoneyHolder = howGetMoneyHolder;
		this.howgetmoneyBank = howGetMoneyBank;
		this.howgetmoneyNumber = howGetMoneyNumber;
	}
	public HowGetMoneyVo() {
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getHowGetMoneyHolder() {
		return howgetmoneyHolder;
	}
	public void setHowGetMoneyHolder(String howGetMoneyHolder) {
		this.howgetmoneyHolder = howGetMoneyHolder;
	}
	public String getHowGetMoneyBank() {
		return howgetmoneyBank;
	}
	public void setHowGetMoneyBank(String howGetMoneyBank) {
		this.howgetmoneyBank = howGetMoneyBank;
	}
	public int getHowGetMoneyNumber() {
		return howgetmoneyNumber;
	}
	public void setHowGetMoneyNumber(int howGetMoneyNumber) {
		this.howgetmoneyNumber = howGetMoneyNumber;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((howgetmoneyBank == null) ? 0 : howgetmoneyBank.hashCode());
		result = prime * result + ((howgetmoneyHolder == null) ? 0 : howgetmoneyHolder.hashCode());
		result = prime * result + howgetmoneyNumber;
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
		HowGetMoneyVo other = (HowGetMoneyVo) obj;
		if (howgetmoneyBank == null) {
			if (other.howgetmoneyBank != null)
				return false;
		} else if (!howgetmoneyBank.equals(other.howgetmoneyBank))
			return false;
		if (howgetmoneyHolder == null) {
			if (other.howgetmoneyHolder != null)
				return false;
		} else if (!howgetmoneyHolder.equals(other.howgetmoneyHolder))
			return false;
		if (howgetmoneyNumber != other.howgetmoneyNumber)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "HowGetMoneyVo [memberEmail=" + memberEmail + ", howGetMoneyHolder=" + howgetmoneyHolder
				+ ", howGetMoneyBank=" + howgetmoneyBank + ", howGetMoneyNumber=" + howgetmoneyNumber + "]";
	}
	
	
}
