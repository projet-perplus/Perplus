package com.perplus.member.service;

import java.util.List;
import java.util.Map;

import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowmoneyVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.PaymentVo;
import com.perplus.member.vo.RejectVo;
import com.perplus.member.vo.ReviewZzimVo;
import com.perplus.member.vo.ShowmoneyVo;
import com.perplus.member.vo.TravelVo;
import com.perplus.util.Constants;

public interface MemberService {
	
	//chatting service
	void createChatting(ChattingVo chatting);
	
	void deleteChatting(int chattingNumber);
	
	List<ChattingVo> selectMyChatting(String memberEmail);
	
	ChattingVo findByChatting(String partnerEmail, String memberEmail);
	
	List<ChattingVo> selectJoinChattingAndChattingLog(String memberEmail);
	
	
	//chattinglog service
	void insertChattingLog(ChattingLogVo chattingLog);
	
	List<ChattingLogVo> selectChattingLog(int chattingNumber);
	
	
	//housecomment service
	int insertHouseComment(HouseCommentVo houseComment);
	
	int deleteHouseComment(int commentSerial);
	
	void deleteAllHouseComment(int houseSerial);
	
	void modifyHouseComment(HouseCommentVo houseComment);
	
	Map<String,Object> selectHouseCommentBySerial(int houseSerial,int page);
	
	List<HouseCommentVo> selectHouseCommentByEmail(String memberEmail);
	
	List<HouseCommentVo> select(String memberEmail);
	
	//housezzim service
	void insertHouseZzim(HouseZzimVo houseZzim);
	
	void deleteHouseZzimBySerial(int houseZzimSerial);
	
	List<HouseZzimVo> selectHouseZzimByEmail(String memberEmail);
	
	List<HouseZzimVo> houseZzimJoinHouseJoinHousePicture(String memberEmail);
	
	HouseZzimVo selectHouseZzimByEmailAndHouseSerial(String memberEmail, int houseSerial);
	
	HouseZzimVo selectHouseZzimBySerial(int houseZzimSerial);
	
	
	//howgetmoney service
	void insertHowmoney(HowmoneyVo howgetmoney);
	
	void deleteHowmoney(int accountSerial);
	
	List<HowmoneyVo> selectHowmoney(String memberEmail);
	
	
	//member service
	boolean isIdExist(String memberEmail);
	
	int joinMember(MemberVo member) throws Exception;
	
	void updateMember(MemberVo newData);
	
	void updateMemberPassword(String memberEmail, String memberPassword);
	
	void deleteMember(String memberEmail);
	
	MemberVo selectMemberFindByEmail(String memberEmail);
	
	void deleteMemberPicture(String memberPicture);
	
	/**
	 * Payment 관련 Service
	 * @param payment
	 * @throws Exception
	 */	
	public void registerPayment(PaymentVo payment) throws Exception;
	
	public void removePayment(int cardSerial) throws Exception;
	
	public PaymentVo getPaymentByCardSerial(int CardSerial) throws Exception;
	
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
	
	
	/**********reviewzzim**********/
	void insertReviewZzim(ReviewZzimVo houseZzim);
	
	void deleteReviewZzimByReviewZzimSerial(int reviewZzimSerial);
	ReviewZzimVo selectReviewZzimByEmailAndReviewSerial(String memberEmail, int reviewSerial);
	ReviewZzimVo selectReviewZzimByReviewZzimSerial(int reviewZzimSerial);

	
	/**
	 * showmethemoney 관련 Service
	 * @param showmethemoney
	 */
	public void registerShowmoney(ShowmoneyVo showmoney);
	
	public ShowmoneyVo getShowmoneyBySerial(int travelSerial) throws Exception;
	
	public List<ShowmoneyVo> getAllShowmoney(String memberEmail) throws Exception;
	
	public void removeShowmoney(int travelSerial) throws Exception;
	
/*	Travel Serial 사용으로 주석
	public int getShowmoneySerialSeq();
*/
	public List<ShowmoneyVo> getShowmoneyByShowmoneyStatus(String memberEmail, int  showmoneyStatus) throws Exception;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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