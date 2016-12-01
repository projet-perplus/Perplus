package com.perplus.member.vo;

import java.sql.Clob;
import java.util.List;

import com.perplus.review.vo.ReviewVo;

public class MemberVo {
	private String memberEmail;//회원이메일
	private String memberGender;//회원성별
	private String memberName;//회원이름
	private int memberTel;//회원전화번호
	private String memberLocation;//회원주소
	private String memberIntroduction;//회원 자기소개
	private boolean memberIdentification;//회원 주민등록번호 인증유무
	private String memberBirthday;//회원 생일
	private String memberPicture;//회원 프로필사진
	
	
	
	private List<ChattingVo> chattingList;//채팅방을 뿌려주기 위한 list
	private List<RejectVo> rejectList;//거부메세지 list
	private List<ReviewVo> reviewList;//명소리뷰 list
	private List<HouseCommentVo> houseCommentList;//숙소 후기 list
	private List<HouseZzimVo> houseZzimList;//숙소 찜 list
	private List<ReviewZzimVo> reviewZzimList;//리뷰 찜 list
	private List<TravelVo> travelList;//여행예약 list
	private List<HowGetMoneyVo> howgetmoneyList;//계좌 정보 list
	private List<ShowMeTheMoneyVo> showmethemoneyList;//대금 내역 list
	private List<PaymentVo> paymentList;//결제 수단 list
	
	
	public MemberVo(String memberEmail, String memberGender, String memberName, int memberTel, String memberLocation,
			String memberIntroduction, boolean memberIdentification, String memberBirthday, String memberPicture,
			List<ChattingVo> chattingList, List<RejectVo> rejectList, List<ReviewVo> reviewList,
			List<HouseCommentVo> houseCommentList, List<HouseZzimVo> houseZzimList, List<ReviewZzimVo> reviewZzimList,
			List<TravelVo> travelList, List<HowGetMoneyVo> howgetmoneyList, List<ShowMeTheMoneyVo> showmethemoneyList,
			List<PaymentVo> paymentList) {
		this.memberEmail = memberEmail;
		this.memberGender = memberGender;
		this.memberName = memberName;
		this.memberTel = memberTel;
		this.memberLocation = memberLocation;
		this.memberIntroduction = memberIntroduction;
		this.memberIdentification = memberIdentification;
		this.memberBirthday = memberBirthday;
		this.memberPicture = memberPicture;
		this.chattingList = chattingList;
		this.rejectList = rejectList;
		this.reviewList = reviewList;
		this.houseCommentList = houseCommentList;
		this.houseZzimList = houseZzimList;
		this.reviewZzimList = reviewZzimList;
		this.travelList = travelList;
		this.howgetmoneyList = howgetmoneyList;
		this.showmethemoneyList = showmethemoneyList;
		this.paymentList = paymentList;
	}


	public MemberVo() {}


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


	public List<ChattingVo> getChattingList() {
		return chattingList;
	}


	public void setChattingList(List<ChattingVo> chattingList) {
		this.chattingList = chattingList;
	}


	public List<RejectVo> getRejectList() {
		return rejectList;
	}


	public void setRejectList(List<RejectVo> rejectList) {
		this.rejectList = rejectList;
	}


	public List<ReviewVo> getReviewList() {
		return reviewList;
	}


	public void setReviewList(List<ReviewVo> reviewList) {
		this.reviewList = reviewList;
	}


	public List<HouseCommentVo> getHouseCommentList() {
		return houseCommentList;
	}


	public void setHouseCommentList(List<HouseCommentVo> houseCommentList) {
		this.houseCommentList = houseCommentList;
	}


	public List<HouseZzimVo> getHouseZzimList() {
		return houseZzimList;
	}


	public void setHouseZzimList(List<HouseZzimVo> houseZzimList) {
		this.houseZzimList = houseZzimList;
	}


	public List<ReviewZzimVo> getReviewZzimList() {
		return reviewZzimList;
	}


	public void setReviewZzimList(List<ReviewZzimVo> reviewZzimList) {
		this.reviewZzimList = reviewZzimList;
	}


	public List<TravelVo> getTravelList() {
		return travelList;
	}


	public void setTravelList(List<TravelVo> travelList) {
		this.travelList = travelList;
	}


	public List<HowGetMoneyVo> getHowgetmoneyList() {
		return howgetmoneyList;
	}


	public void setHowgetmoneyList(List<HowGetMoneyVo> howgetmoneyList) {
		this.howgetmoneyList = howgetmoneyList;
	}


	public List<ShowMeTheMoneyVo> getShowmethemoneyList() {
		return showmethemoneyList;
	}


	public void setShowmethemoneyList(List<ShowMeTheMoneyVo> showmethemoneyList) {
		this.showmethemoneyList = showmethemoneyList;
	}


	public List<PaymentVo> getPaymentList() {
		return paymentList;
	}


	public void setPaymentList(List<PaymentVo> paymentList) {
		this.paymentList = paymentList;
	}


	@Override
	public String toString() {
		return "MemberVo [memberEmail=" + memberEmail + ", memberGender=" + memberGender + ", memberName=" + memberName
				+ ", memberTel=" + memberTel + ", memberLocation=" + memberLocation + ", memberIntroduction="
				+ memberIntroduction + ", memberIdentification=" + memberIdentification + ", memberBirthday="
				+ memberBirthday + ", memberPicture=" + memberPicture + ", chattingList=" + chattingList
				+ ", rejectList=" + rejectList + ", reviewList=" + reviewList + ", houseCommentList=" + houseCommentList
				+ ", houseZzimList=" + houseZzimList + ", reviewZzimList=" + reviewZzimList + ", travelList="
				+ travelList + ", howgetmoneyList=" + howgetmoneyList + ", showmethemoneyList=" + showmethemoneyList
				+ ", paymentList=" + paymentList + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((chattingList == null) ? 0 : chattingList.hashCode());
		result = prime * result + ((houseCommentList == null) ? 0 : houseCommentList.hashCode());
		result = prime * result + ((houseZzimList == null) ? 0 : houseZzimList.hashCode());
		result = prime * result + ((howgetmoneyList == null) ? 0 : howgetmoneyList.hashCode());
		result = prime * result + ((memberBirthday == null) ? 0 : memberBirthday.hashCode());
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberGender == null) ? 0 : memberGender.hashCode());
		result = prime * result + (memberIdentification ? 1231 : 1237);
		result = prime * result + ((memberIntroduction == null) ? 0 : memberIntroduction.hashCode());
		result = prime * result + ((memberLocation == null) ? 0 : memberLocation.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((memberPicture == null) ? 0 : memberPicture.hashCode());
		result = prime * result + memberTel;
		result = prime * result + ((paymentList == null) ? 0 : paymentList.hashCode());
		result = prime * result + ((rejectList == null) ? 0 : rejectList.hashCode());
		result = prime * result + ((reviewList == null) ? 0 : reviewList.hashCode());
		result = prime * result + ((reviewZzimList == null) ? 0 : reviewZzimList.hashCode());
		result = prime * result + ((showmethemoneyList == null) ? 0 : showmethemoneyList.hashCode());
		result = prime * result + ((travelList == null) ? 0 : travelList.hashCode());
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
		if (chattingList == null) {
			if (other.chattingList != null)
				return false;
		} else if (!chattingList.equals(other.chattingList))
			return false;
		if (houseCommentList == null) {
			if (other.houseCommentList != null)
				return false;
		} else if (!houseCommentList.equals(other.houseCommentList))
			return false;
		if (houseZzimList == null) {
			if (other.houseZzimList != null)
				return false;
		} else if (!houseZzimList.equals(other.houseZzimList))
			return false;
		if (howgetmoneyList == null) {
			if (other.howgetmoneyList != null)
				return false;
		} else if (!howgetmoneyList.equals(other.howgetmoneyList))
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
		if (paymentList == null) {
			if (other.paymentList != null)
				return false;
		} else if (!paymentList.equals(other.paymentList))
			return false;
		if (rejectList == null) {
			if (other.rejectList != null)
				return false;
		} else if (!rejectList.equals(other.rejectList))
			return false;
		if (reviewList == null) {
			if (other.reviewList != null)
				return false;
		} else if (!reviewList.equals(other.reviewList))
			return false;
		if (reviewZzimList == null) {
			if (other.reviewZzimList != null)
				return false;
		} else if (!reviewZzimList.equals(other.reviewZzimList))
			return false;
		if (showmethemoneyList == null) {
			if (other.showmethemoneyList != null)
				return false;
		} else if (!showmethemoneyList.equals(other.showmethemoneyList))
			return false;
		if (travelList == null) {
			if (other.travelList != null)
				return false;
		} else if (!travelList.equals(other.travelList))
			return false;
		return true;
	}
}
