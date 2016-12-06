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
		session.insert("insertHouseFilter",houseFilter);
	}

	@Override
	public void deleteHouseFilterByHouseSerial(int houseSerial) {
		session.delete("deleteHouseFilterByHouseSerial",houseSerial);
	}

	@Override
	public HouseFilterVo selectHouseFilterByHouseSerial(int houseSerial) {
		return session.selectOne("selectHouseFilterByHouseSerial", houseSerial);
	}

	@Override
	public HouseFilterVo selectHouseFilterByHouseSerialWithJoin(int houseSerial) {
		return session.selectOne("selectHouseFilterByHouseSerialWithJoin", houseSerial);
	}

	@Override
	public void updateHouseFilter(HouseFilterVo houseFilter) {
		session.update("updateHouseFilter", houseFilter);
	}
}









