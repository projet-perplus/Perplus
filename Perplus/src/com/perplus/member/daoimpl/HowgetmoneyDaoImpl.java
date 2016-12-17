
package com.perplus.member.daoimpl;
//1
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HowgetmoneyDao;
import com.perplus.member.vo.HowmoneyVo;

@Repository
public class HowgetmoneyDaoImpl implements HowgetmoneyDao{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override//결졔수단 등록
	public int insertHowgetmoney(HowmoneyVo howgetmoney) {
		return session.insert("howmoney.insertHowgetmoney",howgetmoney);
	}

	@Override//결제수단 삭제
	public int deleteHowgetmoney(int accountSerial) {
		return session.delete("howmoney.deleteHowgetmoney",accountSerial);
	}

	@Override//결제수단 조회
	public List<HowmoneyVo> selectHowgetmoney(String memberEmail) {
		return session.selectList("howmoney.selectMyHowgetmoney", memberEmail);
	}
	
	
}
