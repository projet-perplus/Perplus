package com.perplus.member.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MemberVo<T> implements Serializable{
	private String memberEmail;//회원이메일
	private String memberPassword;//회원패스워드
	private String memberName;//회원이름
	private String memberBirthday;//회원 생일
	private String memberGender;//회원성별
	private String memberTel;//회원전화번호
	private String memberLocation;//회원주소
	private String memberIntroduction;//회원 자기소개
	private String memberIdentification;//회원 주민등록번호 인증유무
	private String memberPicture;//회원 프로필사진
	
	private MultipartFile memberPictureFile;//파일 받는 변수
	
	private List<T> list;//자식 테이블 list로 담아주는 통합 콜렉션
	
	public MemberVo() {}

	public MemberVo(String memberEmail, String memberPassword, String memberName, String memberBirthday,
			String memberGender, String memberTel, String memberLocation, String memberIntroduction,
			String memberIdentification, String memberPicture, MultipartFile memberPictureFile, List<T> list) {
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberBirthday = memberBirthday;
		this.memberGender = memberGender;
		this.memberTel = memberTel;
		this.memberLocation = memberLocation;
		this.memberIntroduction = memberIntroduction;
		this.memberIdentification = memberIdentification;
		this.memberPicture = memberPicture;
		this.memberPictureFile = memberPictureFile;
		this.list = list;
	}

	public MemberVo(String memberEmail, String memberPassword, String memberName, String memberBirthday,
			String memberGender, String memberTel, String memberLocation, String memberIntroduction,
			String memberIdentification, String memberPicture, MultipartFile memberPictureFile) {
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberBirthday = memberBirthday;
		this.memberGender = memberGender;
		this.memberTel = memberTel;
		this.memberLocation = memberLocation;
		this.memberIntroduction = memberIntroduction;
		this.memberIdentification = memberIdentification;
		this.memberPicture = memberPicture;
		this.memberPictureFile = memberPictureFile;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberBirthday() {
		return memberBirthday;
	}

	public void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberTel() {
		return memberTel;
	}

	public void setMemberTel(String memberTel) {
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

	public String getMemberIdentification() {
		return memberIdentification;
	}

	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}

	public String getMemberPicture() {
		return memberPicture;
	}

	public void setMemberPicture(String memberPicture) {
		this.memberPicture = memberPicture;
	}

	public MultipartFile getMemberPictureFile() {
		return memberPictureFile;
	}

	public void setMemberPictureFile(MultipartFile memberPictureFile) {
		this.memberPictureFile = memberPictureFile;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "MemberVo [memberEmail=" + memberEmail + ", memberPassword=" + memberPassword + ", memberName="
				+ memberName + ", memberBirthday=" + memberBirthday + ", memberGender=" + memberGender + ", memberTel="
				+ memberTel + ", memberLocation=" + memberLocation + ", memberIntroduction=" + memberIntroduction
				+ ", memberIdentification=" + memberIdentification + ", memberPicture=" + memberPicture
				+ ", memberPictureFile=" + memberPictureFile + ", list=" + list + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((list == null) ? 0 : list.hashCode());
		result = prime * result + ((memberBirthday == null) ? 0 : memberBirthday.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberGender == null) ? 0 : memberGender.hashCode());
		result = prime * result + ((memberIdentification == null) ? 0 : memberIdentification.hashCode());
		result = prime * result + ((memberIntroduction == null) ? 0 : memberIntroduction.hashCode());
		result = prime * result + ((memberLocation == null) ? 0 : memberLocation.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((memberPassword == null) ? 0 : memberPassword.hashCode());
		result = prime * result + ((memberPicture == null) ? 0 : memberPicture.hashCode());
		result = prime * result + ((memberPictureFile == null) ? 0 : memberPictureFile.hashCode());
		result = prime * result + ((memberTel == null) ? 0 : memberTel.hashCode());
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
		if (memberIdentification == null) {
			if (other.memberIdentification != null)
				return false;
		} else if (!memberIdentification.equals(other.memberIdentification))
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
		if (memberPassword == null) {
			if (other.memberPassword != null)
				return false;
		} else if (!memberPassword.equals(other.memberPassword))
			return false;
		if (memberPicture == null) {
			if (other.memberPicture != null)
				return false;
		} else if (!memberPicture.equals(other.memberPicture))
			return false;
		if (memberPictureFile == null) {
			if (other.memberPictureFile != null)
				return false;
		} else if (!memberPictureFile.equals(other.memberPictureFile))
			return false;
		if (memberTel == null) {
			if (other.memberTel != null)
				return false;
		} else if (!memberTel.equals(other.memberTel))
			return false;
		return true;
	}
	
	
}
