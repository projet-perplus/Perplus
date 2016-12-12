package com.perplus.member.service;

import java.util.List;
import java.util.Map;

import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowgetmoneyVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.PaymentVo;
import com.perplus.member.vo.RejectVo;
import com.perplus.member.vo.ReviewZzimVo;
import com.perplus.member.vo.ShowMeTheMoneyVo;
import com.perplus.member.vo.TravelVo;
import com.perplus.util.Constants;

public interface MemberService {
	
	//chatting service
	void createChatting(ChattingVo chatting);
	
	void deleteChatting(int chattingNumber);
	
	List<ChattingVo> selectMyChatting(String memberEmail);
	
	ChattingVo findByChatting(String partnerEmail, String memberEmail);
	
	ChattingVo selectJoinChattingAndChattingLog(int chattingNumber);
	
	
	//chattinglog service
	void insertChattingLog(ChattingLogVo chattingLog);
	
	List<ChattingLogVo> selectChattingLog(int chattingNumber);
	
	
	//housecomment service
	void insertHouseComment(HouseCommentVo houseComment);
	
	void deleteHouseComment(String houseSerial, String memberEmail);
	
	void modifyHouseComment(HouseCommentVo houseComment);
	
	List<HouseCommentVo> selectHouseCommentBySerial(int houseSerial);
	
	List<HouseCommentVo> selectHouseCommentByEmail(String memberEmail);
	
	
	//housezzim service
	void insertHouseZzim(HouseZzimVo houseZzim);
	
	void deleteHouseZzimByEmail(int houseSerial, String memberEmail);
	
	List<HouseZzimVo> selectHouseZzimByEmail(String memberEmail);
	
	
	//howgetmoney service
	void insertHowgetmoney(HowgetmoneyVo howgetmoney);
	
	void deleteHowgetmoney(int accountSerial);
	
	List<HowgetmoneyVo> selectHowgetmoney(String memberEmail);
	
	
	//member service
	boolean isIdExist(String memberEmail);
	
	int joinMember(MemberVo member) throws Exception;
	
	void updateMember(MemberVo newData);
	
	void updateMemberPassword(String memberEmail, String memberPassword);
	
	void deleteMember(String memberEmail);
	
	MemberVo selectMemberFindByEmail(String memberEmail);
	
	/**
	 * Payment 관련 Service
	 * @param payment
	 * @throws Exception
	 */	
	public void registerPayment(PaymentVo payment) throws Exception;
	
	public void removePayment(int cardSerial) throws Exception;
	
	public List<PaymentVo> getPayment(String memberEmail) throws Exception;
	
	public int getCardSerialSeq();
	
	/**
	 * Reject 관련 Service
	 * @param reject
	 * @throws Exception
	 */
	public void registerReject(RejectVo reject) throws Exception;

	public RejectVo getReject(int travelSerial) throws Exception;
	
	public void removeReject(int travelSerial) throws Exception;
	
	/**
	 * reviewZzim 관련 Service
	 * @param reviewZzim
	 * @throws Exception
	 */
	public void registerReviewZzim(ReviewZzimVo reviewZzim) throws Exception;
	
	public List<ReviewZzimVo> searchReviewZzim(String memberEmail) throws Exception;
	
	public void removeReviewZzim(ReviewZzimVo reviewZzim) throws Exception;
	
	/**
	 * showmethemoney 관련 Service
	 * @param showmethemoney
	 */
	public void registerShowmethemoney(ShowMeTheMoneyVo showmethemoney);
	
	public ShowMeTheMoneyVo getShowmethemoneyBySerial(int showmethemoneySerial) throws Exception;
	
	public List<ShowMeTheMoneyVo> getAllShowmethemoney(String memberEmail) throws Exception;
	
	public void removeShowmethemoney(int showmethemoneySerial) throws Exception;
	
	/**
	 * Travel  관련 Service
	 * @param travel
	 * @throws Exception
	 */
	public void registerTravel(TravelVo travel) throws Exception;
	
	public TravelVo getTravelByTravelCode(int travelCode) throws Exception;
	
	public List<TravelVo> getAllTravel(String memberEmail) throws Exception;
	
	public TravelVo getTravelbyTravelSerial(int travelSerial) throws Exception;
	
	public void removeTravel(int travelSerial) throws Exception;
	
	

	
}