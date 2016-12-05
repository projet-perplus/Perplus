package com.perplus.house.dao;

import com.perplus.house.vo.HouseFilterVo;

public interface HouseFilterDao {

	void insertHouseFilter(HouseFilterVo houseFilter);
	
	void deleteHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerialWithJoin(int houseSerial);
	
	void updateHouseFilter(HouseFilterVo houseFilter);
}
