package com.perplus.member.vo;

import java.util.Date;

import com.perplus.house.vo.HouseVo;

public class HouseCommentVo {
	private int houseSerial;//하우스번호 번호
	private String memberEamil;//이메일
	private String commentContent;//내용
	private int commentRating;//별점
	private Date commentTime;//등록일자
	private MemberVo member;//
	
	
	public HouseCommentVo(int houseSerial, String memberEamil, String commentContent, int commentRating,
			Date commentTime) {
		this.houseSerial = houseSerial;
		this.memberEamil = memberEamil;
		this.commentContent = commentContent;
		this.commentRating = commentRating;
		this.commentTime = commentTime;
	}
	
	public HouseCommentVo() {}
	
	
	public int getHouseSerial() {
		return houseSerial;
	}
	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}
	public String getMemberEamil() {
		return memberEamil;
	}
	public void setMemberEamil(String memberEamil) {
		this.memberEamil = memberEamil;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public int getCommentRating() {
		return commentRating;
	}
	public void setCommentRating(int commentRating) {
		this.commentRating = commentRating;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	@Override
	public String toString() {
		return "HouseCommentVo [houseSerial=" + houseSerial + ", memberEamil=" + memberEamil + ", commentContent="
				+ commentContent + ", commentRating=" + commentRating + ", commentTime=" + commentTime + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + commentRating;
		result = prime * result + ((commentTime == null) ? 0 : commentTime.hashCode());
		result = prime * result + houseSerial;
		result = prime * result + ((memberEamil == null) ? 0 : memberEamil.hashCode());
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
		HouseCommentVo other = (HouseCommentVo) obj;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentRating != other.commentRating)
			return false;
		if (commentTime == null) {
			if (other.commentTime != null)
				return false;
		} else if (!commentTime.equals(other.commentTime))
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		if (memberEamil == null) {
			if (other.memberEamil != null)
				return false;
		} else if (!memberEamil.equals(other.memberEamil))
			return false;
		return true;
	}
	
	
}
