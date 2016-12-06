package com.perplus.validator;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class memberForm {
	@NotEmpty
	@Email
	private String memberEmail;//회원이메일
	@NotEmpty
	private String memberPassword;//회원패스워드
	@NotEmpty
	private String memberName;//회원이름
	@NotEmpty
	private String memberBirthday;//회원 생일
	
	
	private String memberGender;//회원성별
	private int memberTel;//회원전화번호
	private String memberLocation;//회원주소
	private String memberIntroduction;//회원 자기소개
	private int memberIdentification;//회원 주민등록번호 인증유무
	private String memberPicture;//회원 프로필사진
}
