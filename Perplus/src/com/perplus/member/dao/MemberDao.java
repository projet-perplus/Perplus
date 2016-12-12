package com.perplus.member.dao;

import java.util.Map;

import com.perplus.member.vo.MemberVo;

public interface MemberDao {
	
	int insertMember(MemberVo member);
	
	int deleteMember(String memberEmail);
	
	int updateMember(MemberVo newData);
	
	int updateMemberPassword(Map<String, Object> map);
	
	int selectMemberCountFindByEmail(String id);
	
	MemberVo selectMemberFindByEmail(String memberEmail);
}
