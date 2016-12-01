package com.perplus.member.vo;

public class ReviewZzimVo {

	private int reviewSerial;	// 찜한 리뷰 번호
	private String memberEmail;	// 찜한 사람 이메일
	
	public ReviewZzimVo() {
	}
	
	public ReviewZzimVo(int reviewSerial, String memberEmail) {
		this.reviewSerial = reviewSerial;
		this.memberEmail = memberEmail;
	}
	
	public int getReviewSerial() {
		return reviewSerial;
	}
	
	public void setReviewSerial(int reviewSerial) {
		this.reviewSerial = reviewSerial;
	}
	
	public String getMemberEmail() {
		return memberEmail;
	}
	
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + reviewSerial;
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
		ReviewZzimVo other = (ReviewZzimVo) obj;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (reviewSerial != other.reviewSerial)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "ReviewZzimVo [reviewSerial=" + reviewSerial + ", memberEmail=" + memberEmail + "]";
	}
	
	
}
