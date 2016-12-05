package com.perplus.member.dao;

import com.perplus.member.vo.MemberVo;

//1
public interface MemberDao {
	
	int insertMember(MemberVo member);
	
	int deleteMember(String memberEmail);
	
	int updateMember(MemberVo newData);
	
	int selectMemberCountByEmail(String id);
	
	MemberVo selectMemberByEmail(String memberEmail);
}
