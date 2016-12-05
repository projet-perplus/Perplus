package com.perplus.member.daoimpl;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.MemberDao;
import com.perplus.member.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public int insertMember(MemberVo member) {
		return session.insert("member.insertMember", member);
	}

	@Override
	public int deleteMember(String memberEmail) {
		return session.delete("member.deleteMember", memberEmail);
	}

	@Override
	public int updateMember(MemberVo newData) {
		return session.update("member.updateMember", newData);
	}

	@Override
	public MemberVo selectMemberByEmail(String memberEmail) {
		return session.selectOne("member.selectMemberByEmail", memberEmail);
	}

	@Override
	public int selectMemberCountByEmail(String id) {
		return session.selectOne("member.selectMemberCountByEmail", id);
	}
	
	
	
}
