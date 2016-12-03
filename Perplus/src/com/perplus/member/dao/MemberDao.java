package com.perplus.member.dao;

import java.util.List;

import com.perplus.member.vo.MemberVo;

//1
public interface MemberDao {
	
	int insertMember(MemberVo member);
	
	int deleteMember(String memberEmail);
	
	int updateMember(MemberVo member);
	
	List<MemberVo> selectMemberByEmail(String memberEmail);
}
