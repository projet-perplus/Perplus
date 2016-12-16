package com.perplus.member.vo;

import java.util.Date;

import com.perplus.house.vo.HouseVo;

public class HouseCommentVo {
	private int commentSerial;
	private int houseSerial;
	private String memberEmail;
	private String commentContent;
	private int commentRating;
	private Date commentTime;
	
	private HouseVo house;

	
	
	public HouseCommentVo() {
	}

	public HouseCommentVo(int commentSerial, int houseSerial, String memberEmail, String commentContent,
			int commentRating, Date commentTime, HouseVo house) {
		this.commentSerial = commentSerial;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
		this.commentContent = commentContent;
		this.commentRating = commentRating;
		this.commentTime = commentTime;
		this.house = house;
	}

	public HouseCommentVo(int commentSerial, int houseSerial, String memberEmail, String commentContent,
			int commentRating, Date commentTime) {
		this.commentSerial = commentSerial;
		this.houseSerial = houseSerial;
		this.memberEmail = memberEmail;
		this.commentContent = commentContent;
		this.commentRating = commentRating;
		this.commentTime = commentTime;
	}

	public int getCommentSerial() {
		return commentSerial;
	}

	public void setCommentSerial(int commentSerial) {
		this.commentSerial = commentSerial;
	}

	public int getHouse_serial() {
		return houseSerial;
	}

	public void setHouse_serial(int houseSerial) {
		this.houseSerial = houseSerial;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
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

	public HouseVo getHouse() {
		return house;
	}

	public void setHouse(HouseVo house) {
		this.house = house;
	}

	@Override
	public String toString() {
		return "HouseCommentVo [commentSerial=" + commentSerial + ", houseSerial=" + houseSerial + ", memberEmail="
				+ memberEmail + ", commentContent=" + commentContent + ", commentRating=" + commentRating
				+ ", commentTime=" + commentTime + ", house=" + house + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + commentRating;
		result = prime * result + commentSerial;
		result = prime * result + ((commentTime == null) ? 0 : commentTime.hashCode());
		result = prime * result + ((house == null) ? 0 : house.hashCode());
		result = prime * result + houseSerial;
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
		HouseCommentVo other = (HouseCommentVo) obj;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentRating != other.commentRating)
			return false;
		if (commentSerial != other.commentSerial)
			return false;
		if (commentTime == null) {
			if (other.commentTime != null)
				return false;
		} else if (!commentTime.equals(other.commentTime))
			return false;
		if (house == null) {
			if (other.house != null)
				return false;
		} else if (!house.equals(other.house))
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		return true;
	}
	
	
	
	
}
