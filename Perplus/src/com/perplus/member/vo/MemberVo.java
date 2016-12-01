package com.perplus.member.vo;

import java.sql.Clob;
import java.util.List;

public class MemberVo {
	private String memberEmail;
	private String memberGender;
	private String memberName;
	private int memberTel;
	private String memberLocation;
	private String memberIntroduction;//회원 자기소개
	private boolean memberIdentification;//회원 주민등록번호 인증유무
	private String memberBirthday;//회원 생일
	private String memberPicture;//회원 프로필사진
	
	private List<ChattingVo> list;//채팅방을 뿌려주기 위한 list
	
	
}
