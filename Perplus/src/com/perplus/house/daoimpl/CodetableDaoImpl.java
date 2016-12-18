package com.perplus.house.daoimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionException;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.house.dao.CodetableDao;
import com.perplus.house.vo.CodetableVo;


@Repository
public class CodetableDaoImpl implements CodetableDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<CodetableVo> codetableFindByKind(int codeKind){
		return session.selectList("codetable.selectCodetableByCodeKind",codeKind);
	}
	
}
