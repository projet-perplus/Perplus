package com.perplus.house.service;

import com.perplus.house.vo.HouseFilterVo;

public interface HouseService {
	//house service
	
	//housefilter service
	
	void insertHouseFilter(HouseFilterVo houseFilter);
	
	void deleteHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerialWithJoin(int houseSerial);
	
	void updateHouseFilter(HouseFilterVo houseFilter);
	
	//checkList service
	
	//shutdown service
	
	//housePicture service
	
	//houseComment service
	
	//codetable service
}
