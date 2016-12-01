package com.perplus.member.vo;

import java.util.List;

public class ChattingVo {
	private int chattingNumber;//채팅방번호
	private String chattingPartner;//채팅상대
	private String memberEmail;//내 이메일
	private List<ChattingLogVo> list;//채팅 로그를 뿌려주기 위한 list
	
	public ChattingVo() {}
	
	public ChattingVo(int chattingNumber, String chattingPartner, String memberEmail, List<ChattingLogVo> chattingLog) {
		this.chattingNumber = chattingNumber;
		this.chattingPartner = chattingPartner;
		this.memberEmail = memberEmail;
		this.list = chattingLog;
	}

	public int getChattingNumber() {
		return chattingNumber;
	}

	public void setChattingNumber(int chattingNumber) {
		this.chattingNumber = chattingNumber;
	}

	public String getChattingPartner() {
		return chattingPartner;
	}

	public void setChattingPartner(String chattingPartner) {
		this.chattingPartner = chattingPartner;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public List<ChattingLogVo> getChattingLog() {
		return list;
	}

	public void setChattingLog(List<ChattingLogVo> chattingLog) {
		this.list = chattingLog;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((list == null) ? 0 : list.hashCode());
		result = prime * result + chattingNumber;
		result = prime * result + ((chattingPartner == null) ? 0 : chattingPartner.hashCode());
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
		ChattingVo other = (ChattingVo) obj;
		if (list == null) {
			if (other.list != null)
				return false;
		} else if (!list.equals(other.list))
			return false;
		if (chattingNumber != other.chattingNumber)
			return false;
		if (chattingPartner == null) {
			if (other.chattingPartner != null)
				return false;
		} else if (!chattingPartner.equals(other.chattingPartner))
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
		return "ChattingVo [chattingNumber=" + chattingNumber + ", chattingPartner=" + chattingPartner
				+ ", memberEmail=" + memberEmail + ", chattingLog=" + list + "]";
	}
	
	
	
	
}
