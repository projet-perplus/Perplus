package com.perplus.house.daoimpl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.house.dao.HouseFilterDao;
import com.perplus.house.vo.HouseFilterVo;

@Repository
public class HouseFilterDaoImpl implements HouseFilterDao{

	@Autowired
	private SqlSessionTemplate session;


	@Override
	public void insertHouseFilter(HouseFilterVo houseFilter) {
		// TODO Auto-generated method stub
		session.insert("");
	}

	@Override
	public void updateHouseFilter(HouseFilterVo houseFilter) {
		// TODO Auto-generated method stub
		session.update("");
	}

	@Override
	public HouseFilterVo selectHouseFilterBySerial(int serial) {
		// TODO Auto-generated method stub
		return session.selectOne("");
	}

	@Override
	public void deleteHouseFilterBySerial(int serial) {
		session.delete("");
	}	
}









