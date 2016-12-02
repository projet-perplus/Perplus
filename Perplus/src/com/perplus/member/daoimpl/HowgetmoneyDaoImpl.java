package com.perplus.member.daoimpl;
//1
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HowgetmoneyDao;
import com.perplus.member.vo.HowgetmoneyVo;

@Repository
public class HowgetmoneyDaoImpl implements HowgetmoneyDao{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public int insertHowgetmoney(HowgetmoneyVo howgetmoney) {
		return session.insert("howgetmoney.insertHowgetmoney",howgetmoney);
	}

	@Override
	public int deleteHowgetmoney(HowgetmoneyVo howgetmoney) {
		return session.delete("howgetmoney.deleteHowgetmoney",howgetmoney);
	}

	@Override
	public List<HowgetmoneyVo> selectHowgetmoney(Map<String, Object> map) {
		return session.selectList("howgetmoney.selectMyHowgetmoney", map);
	}
	
	
}
