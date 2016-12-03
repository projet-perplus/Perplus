package com.perplus.member.vo;

public class RejectVo {
	
	private String memberEmail;	// 클라이언트
	private String memberPartner; //호스트
	private String rejectContent;	// 호스트가 입력한 메시지
	private int travelSerial;	// 숙박 번호
	
	public RejectVo() {}

	public RejectVo(String memberEmail, String memberPartner, String rejectContent, int travelSerial) {
		this.memberEmail = memberEmail;
		this.memberPartner = memberPartner;
		this.rejectContent = rejectContent;
		this.travelSerial = travelSerial;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPartner() {
		return memberPartner;
	}

	public void setMemberPartner(String memberPartner) {
		this.memberPartner = memberPartner;
	}

	public String getRejectContent() {
		return rejectContent;
	}

	public void setRejectContent(String rejectContent) {
		this.rejectContent = rejectContent;
	}

	public int getTravelSerial() {
		return travelSerial;
	}

	public void setTravelSerial(int travelSerial) {
		this.travelSerial = travelSerial;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberPartner == null) ? 0 : memberPartner.hashCode());
		result = prime * result + ((rejectContent == null) ? 0 : rejectContent.hashCode());
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
		RejectVo other = (RejectVo) obj;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (memberPartner == null) {
			if (other.memberPartner != null)
				return false;
		} else if (!memberPartner.equals(other.memberPartner))
			return false;
		if (rejectContent == null) {
			if (other.rejectContent != null)
				return false;
		} else if (!rejectContent.equals(other.rejectContent))
			return false;
		if (travelSerial != other.travelSerial)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "RejectVo [memberEmail=" + memberEmail + ", memberPartner=" + memberPartner + ", rejectContent="
				+ rejectContent + ", travelSerial=" + travelSerial + "]";
	}
}
