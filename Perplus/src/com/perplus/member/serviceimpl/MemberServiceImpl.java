package com.perplus.member.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.member.daoimpl.ChattingDaoImpl;
import com.perplus.member.daoimpl.ChattingLogDaoImpl;
import com.perplus.member.daoimpl.HouseCommentDaoImpl;
import com.perplus.member.daoimpl.HouseZzimDaoImpl;
import com.perplus.member.daoimpl.HowgetmoneyDaoImpl;
import com.perplus.member.daoimpl.MemberDaoImpl;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.MemberVo;

@Service
public class MemberServiceImpl {

	
	@Autowired
	@Qualifier("chattingDaoImpl")
	private ChattingDaoImpl chattingDao;
	
	@Autowired
	@Qualifier("chattingLogDaoImpl")
	private ChattingLogDaoImpl chattingLogDao;
	
	@Autowired
	@Qualifier("houseCommentDaoImpl")
	private HouseCommentDaoImpl houseCommentDao;
	
	@Autowired
	@Qualifier("houseZzimDaoImpl")
	private HouseZzimDaoImpl houseZzimDao;
	
	@Autowired
	@Qualifier("howgetmoneyDaoImpl")
	private HowgetmoneyDaoImpl howgetmoneyDao;

	@Autowired
	@Qualifier("memberDaoImpl")
	private MemberDaoImpl memberDao;
	
	/*
	 *	member Service
	 */
	public boolean isIdExist(String id){
		boolean flag = memberDao.selectMemberCountByEmail(id)==1;
		return flag;
	}
	
	public void joinMember(MemberVo member) throws Exception{
		if(isIdExist(member.getMemberEmail())){
			throw new Exception(member.getMemberEmail()+"는 이미 등록된 아이디입니다.");
		}
		memberDao.insertMember(member);
	}
	
	public void updateMember(MemberVo member){
		memberDao.updateMember(member);
	}
	
	public void deleteMember(String memberEmail){
		memberDao.deleteMember(memberEmail);
	}

	public MemberVo selectMemberByEmail(String memberEmail){
		return memberDao.selectMemberByEmail(memberEmail);
	}
	
	
	/*
	 * chatting Service
	 */
	
	public void createChatting(ChattingVo chatting){
		chattingDao.creatChatting(chatting);
	}
	
	public void deleteChatting(int chattingNumber){
		chattingDao.deleteChatting(chattingNumber);
	}
	
	public List<ChattingVo> selectMyChatting(String memberEmail){
		
		return chattingDao.selectMyChatting(memberEmail);
	}
	
	public ChattingVo findByChatting(String partnerEmail, String memberEmail){
		Map<String, Object> map = new HashMap<>();
		map.put("partnerEmail", partnerEmail);//상대방 email
		map.put("memberEmail", memberEmail);//나의 email
		return chattingDao.findByChattingNumber(map);
	}
	
	public ChattingVo selectJoinChattingAndChattingLog(int chattingNumber){
		return chattingDao.chattingJoin(chattingNumber);
	}
	
	/*
	 * chattingLog Service
	 */
	
	
	public void insertChattingLog(ChattingLogVo chattingLog){
		chattingLogDao.insertChattingLog(chattingLog);
	}
	
	public List<ChattingLogVo> selectChattingLog(int chattingNumber){
		return chattingLogDao.selectChattingLog(chattingNumber);
	}
	

	
	
}
