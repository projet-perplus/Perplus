package com.perplus.member.vo;

import java.util.List;

public class MemberVo<T> {
	private String memberEmail;//회원이메일
	private String memberGender;//회원성별
	private String memberName;//회원이름
	private int memberTel;//회원전화번호
	private String memberLocation;//회원주소
	private String memberIntroduction;//회원 자기소개
	private boolean memberIdentification;//회원 주민등록번호 인증유무
	private String memberBirthday;//회원 생일
	private String memberPicture;//회원 프로필사진
	
	private List<T> list;//자식 테이블 list로 담아주는 통합 콜렉션
	
	public MemberVo(String memberEmail, String memberGender, String memberName, int memberTel, String memberLocation,
			String memberIntroduction, boolean memberIdentification, String memberBirthday, String memberPicture,
			List<T> list) {
		this.memberEmail = memberEmail;
		this.memberGender = memberGender;
		this.memberName = memberName;
		this.memberTel = memberTel;
		this.memberLocation = memberLocation;
		this.memberIntroduction = memberIntroduction;
		this.memberIdentification = memberIdentification;
		this.memberBirthday = memberBirthday;
		this.memberPicture = memberPicture;
		this.list = list;
	}

	public MemberVo(String memberEmail, String memberGender, String memberName, int memberTel, String memberLocation,
			String memberIntroduction, boolean memberIdentification, String memberBirthday, String memberPicture) {
		this.memberEmail = memberEmail;
		this.memberGender = memberGender;
		this.memberName = memberName;
		this.memberTel = memberTel;
		this.memberLocation = memberLocation;
		this.memberIntroduction = memberIntroduction;
		this.memberIdentification = memberIdentification;
		this.memberBirthday = memberBirthday;
		this.memberPicture = memberPicture;
	}

	public MemberVo(){}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getMemberTel() {
		return memberTel;
	}

	public void setMemberTel(int memberTel) {
		this.memberTel = memberTel;
	}

	public String getMemberLocation() {
		return memberLocation;
	}

	public void setMemberLocation(String memberLocation) {
		this.memberLocation = memberLocation;
	}

	public String getMemberIntroduction() {
		return memberIntroduction;
	}

	public void setMemberIntroduction(String memberIntroduction) {
		this.memberIntroduction = memberIntroduction;
	}

	public boolean isMemberIdentification() {
		return memberIdentification;
	}

	public void setMemberIdentification(boolean memberIdentification) {
		this.memberIdentification = memberIdentification;
	}

	public String getMemberBirthday() {
		return memberBirthday;
	}

	public void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}

	public String getMemberPicture() {
		return memberPicture;
	}

	public void setMemberPicture(String memberPicture) {
		this.memberPicture = memberPicture;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((list == null) ? 0 : list.hashCode());
		result = prime * result + ((memberBirthday == null) ? 0 : memberBirthday.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberGender == null) ? 0 : memberGender.hashCode());
		result = prime * result + (memberIdentification ? 1231 : 1237);
		result = prime * result + ((memberIntroduction == null) ? 0 : memberIntroduction.hashCode());
		result = prime * result + ((memberLocation == null) ? 0 : memberLocation.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((memberPicture == null) ? 0 : memberPicture.hashCode());
		result = prime * result + memberTel;
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
		MemberVo other = (MemberVo) obj;
		if (list == null) {
			if (other.list != null)
				return false;
		} else if (!list.equals(other.list))
			return false;
		if (memberBirthday == null) {
			if (other.memberBirthday != null)
				return false;
		} else if (!memberBirthday.equals(other.memberBirthday))
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (memberGender == null) {
			if (other.memberGender != null)
				return false;
		} else if (!memberGender.equals(other.memberGender))
			return false;
		if (memberIdentification != other.memberIdentification)
			return false;
		if (memberIntroduction == null) {
			if (other.memberIntroduction != null)
				return false;
		} else if (!memberIntroduction.equals(other.memberIntroduction))
			return false;
		if (memberLocation == null) {
			if (other.memberLocation != null)
				return false;
		} else if (!memberLocation.equals(other.memberLocation))
			return false;
		if (memberName == null) {
			if (other.memberName != null)
				return false;
		} else if (!memberName.equals(other.memberName))
			return false;
		if (memberPicture == null) {
			if (other.memberPicture != null)
				return false;
		} else if (!memberPicture.equals(other.memberPicture))
			return false;
		if (memberTel != other.memberTel)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberVo [memberEmail=" + memberEmail + ", memberGender=" + memberGender + ", memberName=" + memberName
				+ ", memberTel=" + memberTel + ", memberLocation=" + memberLocation + ", memberIntroduction="
				+ memberIntroduction + ", memberIdentification=" + memberIdentification + ", memberBirthday="
				+ memberBirthday + ", memberPicture=" + memberPicture + ", list=" + list + "]";
	}
	
	
}
