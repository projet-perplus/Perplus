package com.perplus.member.vo;

import java.util.Date;
import java.util.List;

public class ChattingLogVo {
	private int chattingNumber;//채팅방번호
	private String memberEmail;//이메일
	private String chattingContent;//채팅내용
	private Date chattingTime;//채팅일시
	private ChattingVo chatting;//chatting방을 찾기위한 vo
	
	public ChattingLogVo() {}

	public ChattingLogVo(int chattingNumber, String memberEmail, String chattingContent, Date chattingTime,
			ChattingVo chatting) {
		this.chattingNumber = chattingNumber;
		this.memberEmail = memberEmail;
		this.chattingContent = chattingContent;
		this.chattingTime = chattingTime;
		this.chatting = chatting;
	}

	public ChattingLogVo(int chattingNumber, String memberEmail, String chattingContent, Date chattingTime) {
		this.chattingNumber = chattingNumber;
		this.memberEmail = memberEmail;
		this.chattingContent = chattingContent;
		this.chattingTime = chattingTime;
	}

	public int getChattingNumber() {
		return chattingNumber;
	}

	public void setChattingNumber(int chattingNumber) {
		this.chattingNumber = chattingNumber;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getChattingContent() {
		return chattingContent;
	}

	public void setChattingContent(String chattingContent) {
		this.chattingContent = chattingContent;
	}

	public Date getChattingTime() {
		return chattingTime;
	}

	public void setChattingTime(Date chattingTime) {
		this.chattingTime = chattingTime;
	}

	public ChattingVo getChatting() {
		return chatting;
	}

	public void setChatting(ChattingVo chatting) {
		this.chatting = chatting;
	}

	@Override
	public String toString() {
		return "ChattingLogVo [chattingNumber=" + chattingNumber + ", memberEmail=" + memberEmail + ", chattingContent="
				+ chattingContent + ", chattingTime=" + chattingTime + ", chatting=" + chatting + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((chatting == null) ? 0 : chatting.hashCode());
		result = prime * result + ((chattingContent == null) ? 0 : chattingContent.hashCode());
		result = prime * result + chattingNumber;
		result = prime * result + ((chattingTime == null) ? 0 : chattingTime.hashCode());
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
		ChattingLogVo other = (ChattingLogVo) obj;
		if (chatting == null) {
			if (other.chatting != null)
				return false;
		} else if (!chatting.equals(other.chatting))
			return false;
		if (chattingContent == null) {
			if (other.chattingContent != null)
				return false;
		} else if (!chattingContent.equals(other.chattingContent))
			return false;
		if (chattingNumber != other.chattingNumber)
			return false;
		if (chattingTime == null) {
			if (other.chattingTime != null)
				return false;
		} else if (!chattingTime.equals(other.chattingTime))
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		return true;
	}
	
	
	
}
