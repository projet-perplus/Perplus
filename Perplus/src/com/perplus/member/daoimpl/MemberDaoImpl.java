package com.perplus.member.daoimpl;
import java.util.List;

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
	public int updateMember(MemberVo member) {
		return session.update("member.updateMember", member);
	}

	@Override
	public List<MemberVo> selectMemberByEmail(String memberEmail) {
		return session.selectList("member.selectMemberByEmail", memberEmail);
	}
	
}
