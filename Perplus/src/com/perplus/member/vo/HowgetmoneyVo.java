
package com.perplus.member.vo;
//a
public class HowgetmoneyVo {
	private int accountSerial;
	private String memberEmail;
	private String howgetmoneyHolder;
	private String howgetmoneyBank;
	private int howgetmoneyNumber;
	public HowgetmoneyVo(int accountSerial, String memberEmail, String howgetmoneyHolder, String howgetmoneyBank,
			int howgetmoneyNumber) {
		this.accountSerial = accountSerial;
		this.memberEmail = memberEmail;
		this.howgetmoneyHolder = howgetmoneyHolder;
		this.howgetmoneyBank = howgetmoneyBank;
		this.howgetmoneyNumber = howgetmoneyNumber;
	}
	public HowgetmoneyVo() {
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
	public String getHowgetmoneyHolder() {
		return howgetmoneyHolder;
	}
	public void setHowgetmoneyHolder(String howgetmoneyHolder) {
		this.howgetmoneyHolder = howgetmoneyHolder;
	}
	public String getHowgetmoneyBank() {
		return howgetmoneyBank;
	}
	public void setHowgetmoneyBank(String howgetmoneyBank) {
		this.howgetmoneyBank = howgetmoneyBank;
	}
	public int getHowgetmoneyNumber() {
		return howgetmoneyNumber;
	}
	public void setHowgetmoneyNumber(int howgetmoneyNumber) {
		this.howgetmoneyNumber = howgetmoneyNumber;
	}
	@Override
	public String toString() {
		return "HowgetmoneyVo [accountSerial=" + accountSerial + ", memberEmail=" + memberEmail + ", howgetmoneyHolder="
				+ howgetmoneyHolder + ", howgetmoneyBank=" + howgetmoneyBank + ", howgetmoneyNumber="
				+ howgetmoneyNumber + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + accountSerial;
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
		HowgetmoneyVo other = (HowgetmoneyVo) obj;
		if (accountSerial != other.accountSerial)
			return false;
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
	
	
}
