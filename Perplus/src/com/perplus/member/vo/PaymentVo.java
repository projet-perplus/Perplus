package com.perplus.member.vo;

import java.util.Date;

public class PaymentVo {
	
	private String memberEmail;
	private String paymentType;	// 결제 회사
	private int cardNumber;
	private Date cardExpiration;
	private String cardSecondName;	// 이름
	private String cardFirstName;	//이름의  성
	
	public PaymentVo() {}

	public PaymentVo(String memberEmail, String paymentType, int cardNumber, Date cardExpiration, String cardSecondName,
			String cardFirstName) {
		this.memberEmail = memberEmail;
		this.paymentType = paymentType;
		this.cardNumber = cardNumber;
		this.cardExpiration = cardExpiration;
		this.cardSecondName = cardSecondName;
		this.cardFirstName = cardFirstName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public int getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}

	public Date getCardExpiration() {
		return cardExpiration;
	}

	public void setCardExpiration(Date cardExpiration) {
		this.cardExpiration = cardExpiration;
	}

	public String getCardSecondName() {
		return cardSecondName;
	}

	public void setCardSecondName(String cardSecondName) {
		this.cardSecondName = cardSecondName;
	}

	public String getCardFirstName() {
		return cardFirstName;
	}

	public void setCardFirstName(String cardFirstName) {
		this.cardFirstName = cardFirstName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cardExpiration == null) ? 0 : cardExpiration.hashCode());
		result = prime * result + ((cardFirstName == null) ? 0 : cardFirstName.hashCode());
		result = prime * result + cardNumber;
		result = prime * result + ((cardSecondName == null) ? 0 : cardSecondName.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((paymentType == null) ? 0 : paymentType.hashCode());
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
		PaymentVo other = (PaymentVo) obj;
		if (cardExpiration == null) {
			if (other.cardExpiration != null)
				return false;
		} else if (!cardExpiration.equals(other.cardExpiration))
			return false;
		if (cardFirstName == null) {
			if (other.cardFirstName != null)
				return false;
		} else if (!cardFirstName.equals(other.cardFirstName))
			return false;
		if (cardNumber != other.cardNumber)
			return false;
		if (cardSecondName == null) {
			if (other.cardSecondName != null)
				return false;
		} else if (!cardSecondName.equals(other.cardSecondName))
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (paymentType == null) {
			if (other.paymentType != null)
				return false;
		} else if (!paymentType.equals(other.paymentType))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PaymentVo [memberEmail=" + memberEmail + ", paymentType=" + paymentType + ", cardNumber=" + cardNumber
				+ ", cardExpiration=" + cardExpiration + ", cardSecondName=" + cardSecondName + ", cardFirstName="
				+ cardFirstName + "]";
	}
}
