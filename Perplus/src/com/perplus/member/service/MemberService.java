package com.perplus.member.service;

import java.util.List;

import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowgetmoneyVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.TravelVo;

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
	
	void deleteHowgetmoney(HowgetmoneyVo howgetmoney);
	
	void selectHowgetmoney(String memberEmail);
	
	
	//member service
	boolean isIdExist(String memberEmail);
	
	void joinMember(MemberVo member) throws Exception;
	
	void updateMember(MemberVo newData);
	
	void deleteMember(String memberEmail);
	
	MemberVo selectMemberFindByEmail(String memberEmail);
}