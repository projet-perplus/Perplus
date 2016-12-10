package com.perplus.member.vo;

import java.util.Date;

public class PaymentVo {
	
	private int cardSerial;
	private String memberEmail;
	private String paymentType;	// 결제 회사
	private long cardNumber;
	private Date cardExpiration;
	private String cardName; // 이름
	private String cardCvc; //cvc 번호
	
	public PaymentVo() {}

	public PaymentVo(int cardSerial, String memberEmail, String paymentType, long cardNumber, Date cardExpiration,
			String cardName, String cardCvc) {
		this.cardSerial = cardSerial;
		this.memberEmail = memberEmail;
		this.paymentType = paymentType;
		this.cardNumber = cardNumber;
		this.cardExpiration = cardExpiration;
		this.cardName = cardName;
		this.cardCvc = cardCvc;
	}

	public int getCardSerial() {
		return cardSerial;
	}

	public void setCardSerial(int cardSerial) {
		this.cardSerial = cardSerial;
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

	public long getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}

	public Date getCardExpiration() {
		return cardExpiration;
	}

	public void setCardExpiration(Date cardExpiration) {
		this.cardExpiration = cardExpiration;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardCvc() {
		return cardCvc;
	}

	public void setCardCvc(String cardCvc) {
		this.cardCvc = cardCvc;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cardCvc == null) ? 0 : cardCvc.hashCode());
		result = prime * result + ((cardExpiration == null) ? 0 : cardExpiration.hashCode());
		result = prime * result + ((cardName == null) ? 0 : cardName.hashCode());
		result = prime * result + (int) (cardNumber ^ (cardNumber >>> 32));
		result = prime * result + cardSerial;
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
		if (cardCvc == null) {
			if (other.cardCvc != null)
				return false;
		} else if (!cardCvc.equals(other.cardCvc))
			return false;
		if (cardExpiration == null) {
			if (other.cardExpiration != null)
				return false;
		} else if (!cardExpiration.equals(other.cardExpiration))
			return false;
		if (cardName == null) {
			if (other.cardName != null)
				return false;
		} else if (!cardName.equals(other.cardName))
			return false;
		if (cardNumber != other.cardNumber)
			return false;
		if (cardSerial != other.cardSerial)
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
		return "PaymentVo [cardSerial=" + cardSerial + ", memberEmail=" + memberEmail + ", paymentType=" + paymentType
				+ ", cardNumber=" + cardNumber + ", cardExpiration=" + cardExpiration + ", cardName=" + cardName
				+ ", cardCvc=" + cardCvc + "]";
	}
}
