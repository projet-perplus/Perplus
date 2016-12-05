package com.perplus.member.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.member.dao.ChattingDao;
import com.perplus.member.dao.ChattingLogDao;
import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.dao.HouseZzimDao;
import com.perplus.member.dao.HowgetmoneyDao;
import com.perplus.member.dao.MemberDao;
import com.perplus.member.service.MemberService;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowgetmoneyVo;
import com.perplus.member.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{


	
	@Autowired
	@Qualifier("chattingDaoImpl")
	private ChattingDao chattingDao;
	
	@Autowired
	@Qualifier("chattingLogDaoImpl")
	private ChattingLogDao chattingLogDao;
	
	@Autowired
	@Qualifier("houseCommentDaoImpl")
	private HouseCommentDao houseCommentDao;
	
	@Autowired
	@Qualifier("houseZzimDaoImpl")
	private HouseZzimDao houseZzimDao;
	
	@Autowired
	@Qualifier("howgetmoneyDaoImpl")
	private HowgetmoneyDao howgetmoneyDao;

	@Autowired
	@Qualifier("memberDaoImpl")
	private MemberDao memberDao;


	
	
	
	/*
	 * chatting Service
	 */
	
	@Override//채팅방 등록.
	public void createChatting(ChattingVo chatting){
		String memberEmail = chatting.getMemberEmail();
		String chattingPartner = chatting.getChattingPartner();
		if(findByChatting(memberEmail,chattingPartner)==null){
			chattingDao.creatChatting(chatting);
		}
	}
	
	@Override//채팅방 삭제
	public void deleteChatting(int chattingNumber){
		chattingDao.deleteChatting(chattingNumber);
	}
	
	@Override//내가속한 채팅방 가져오기
	public List<ChattingVo> selectMyChatting(String memberEmail){	
		return chattingDao.selectMyChatting(memberEmail);
	}
	
	@Override//상대와 내가 속한 채팅방이 있는지..
	public ChattingVo findByChatting(String partnerEmail, String memberEmail){
		Map<String, Object> map = new HashMap<>();
		map.put("chattingPartner", partnerEmail);//상대방 email
		map.put("memberEmail", memberEmail);//나의 email
		return chattingDao.findByChattingNumber(map);
	}
	
	@Override//선택한 채팅방과 채팅로그 가져오기
	public ChattingVo selectJoinChattingAndChattingLog(int chattingNumber){
		return chattingDao.chattingJoin(chattingNumber);
	}
	
	/*
	 * chattingLog Service
	 */
	
	@Override//채팅로그 등록
	public void insertChattingLog(ChattingLogVo chattingLog){
		chattingLogDao.insertChattingLog(chattingLog);
	}
	
	@Override//채팅로그 조회하기
	public List<ChattingLogVo> selectChattingLog(int chattingNumber){
		return chattingLogDao.selectChattingLog(chattingNumber);
	}
	
	/*
	 * HouseComment Service
	 */
	
	@Override//houseComment 등록
	public void insertHouseComment(HouseCommentVo houseComment){
		houseCommentDao.insertHouseComment(houseComment);
	}
	
	@Override//houseComment 삭제
	public void deleteHouseComment(String houseSerial, String memberEmail){
		Map<String, Object> map = new HashMap<>();
		map.put("houseSerial", houseSerial);
		map.put("memberEmail", memberEmail);
		houseCommentDao.deleteHouseComment(map);
	}
	
	@Override//houseComment 수정
	public void modifyHouseComment(HouseCommentVo houseComment){
		houseCommentDao.modifyHouseComment(houseComment);
	}
	
	@Override//serial로 조회하기(하우스 정보에서 뿌려주기)
	public List<HouseCommentVo> selectHouseCommentBySerial(int houseSerial){
		return houseCommentDao.selectHouseCommentBySerial(houseSerial);
	}
	
	@Override//memberEmail로 조회하기(내정보에서 내가 쓴 댓글 보기)
	public List<HouseCommentVo> selectHouseCommentByEmail(String memberEmail){
		return houseCommentDao.selectHouseCommentByEmail(memberEmail);
	}
	
	
	/*
	 * HouseZzim Service
	 */
	
	@Override//찜 등록
	public void insertHouseZzim(HouseZzimVo houseZzim){
		houseZzimDao.insertHouseZzim(houseZzim);
	}
	
	@Override//찜삭제
	public void deleteHouseZzimByEmail(int houseSerial, String memberEmail){
		Map<String, Object> map = new HashMap<>();
		map.put("houseSerial", houseSerial);
		map.put("memberEmail", memberEmail);
		houseZzimDao.deleteHouseZzimByEmail(map);
	}
	
	@Override//내 찜 찾기
	public List<HouseZzimVo> selectHouseZzimByEmail(String memberEmail){
		return houseZzimDao.selectHouseZzimByEmail(memberEmail);
	}
	
	
	/*
	 * howgetmoney Service
	 */
	
	@Override//결제수단 등록
	public void insertHowgetmoney(HowgetmoneyVo howgetmoney){
		howgetmoneyDao.insertHowgetmoney(howgetmoney);
	}
	
	@Override//결제수단 삭제
	public void deleteHowgetmoney(HowgetmoneyVo howgetmoney){
		howgetmoneyDao.deleteHowgetmoney(howgetmoney);
	}
	
	@Override//결제수단 조회
	public void selectHowgetmoney(String memberEmail){
		howgetmoneyDao.selectHowgetmoney(memberEmail);
	}
	
	
	/*	
	 * memberService
	 */
	
	@Override//email 등록 여부
	public boolean isIdExist(String memberEmail){
		boolean flag = memberDao.selectMemberCountFindByEmail(memberEmail)==1;
		return flag;
	}
	
	@Override//회원 등록
	public int joinMember(MemberVo member) throws Exception{
		if(isIdExist(member.getMemberEmail())){
			throw new Exception(member.getMemberEmail()+"는 이미 등록된 아이디입니다.");
		}
		return memberDao.insertMember(member);
	}
	
	@Override//회원 수정
	public void updateMember(MemberVo newData){
		memberDao.updateMember(newData);
	}
	
	@Override//회원 삭제
	public void deleteMember(String memberEmail){
		memberDao.deleteMember(memberEmail);
	}
	
	@Override//회원조회
	public MemberVo selectMemberFindByEmail(String memberEmail){
		return memberDao.selectMemberFindByEmail(memberEmail);
	}
	
	
}
