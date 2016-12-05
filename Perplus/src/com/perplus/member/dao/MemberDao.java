package com.perplus.member.dao;

import com.perplus.member.vo.MemberVo;

//1
public interface MemberDao {
	
	int insertMember(MemberVo member);
	
	int deleteMember(String memberEmail);
	
	int updateMember(MemberVo newData);
	
	int selectMemberCountFindByEmail(String id);
	
	MemberVo selectMemberFindByEmail(String memberEmail);
}
