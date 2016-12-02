
package com.perplus.member.daoimpl;
//1
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HouseZzimDao;
import com.perplus.member.vo.HouseZzimVo;

@Repository
public class HouseZzimDaoImpl implements HouseZzimDao{

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public int insertHouseZzim(HouseZzimVo houseZzim) {
		return session.insert("houseZzim.insertHouseZzim", houseZzim);
	}

	@Override
	public int deleteHouseZzim(Map<String, Object> map) {
		return session.delete("houseZzim.deleteHouseZzim", map);
	}
	
	
}
