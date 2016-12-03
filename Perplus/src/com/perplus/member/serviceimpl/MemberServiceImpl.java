package com.perplus.member.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.member.daoimpl.ChattingDaoImpl;
import com.perplus.member.daoimpl.ChattingLogDaoImpl;
import com.perplus.member.daoimpl.HouseCommentDaoImpl;
import com.perplus.member.daoimpl.HouseZzimDaoImpl;
import com.perplus.member.daoimpl.HowgetmoneyDaoImpl;
import com.perplus.member.daoimpl.MemberDaoImpl;
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
}
