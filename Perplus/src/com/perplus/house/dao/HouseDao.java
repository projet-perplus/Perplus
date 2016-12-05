package com.perplus.house.dao;

import com.perplus.house.vo.HouseVo;

public interface HouseDao {
	
	void insertHouseFirst(HouseVo houseVo);
	
	void updateHouse(HouseVo houseVo);
	
	void deleteHouseByHouseSerial(int houseSerial);
	
	HouseVo selectHouseByHouseSerial(int houseSerial);
	
	
}
