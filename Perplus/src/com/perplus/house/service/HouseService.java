package com.perplus.house.service;

import java.util.HashMap;
import java.util.List;

import com.perplus.house.vo.HouseFilterVo;
import com.perplus.house.vo.HouseVo;

public interface HouseService {
	//house service
	
	//housefilter service
	
	void insertHouseFilter(HouseFilterVo houseFilter);
	
	void deleteHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerialWithJoin(int houseSerial);
	
	void updateHouseFilter(HouseFilterVo houseFilter);
	
	List<HouseVo> selectHouseBySectionAndFilter(HashMap map);
	
	HashMap selectHousePriceRange();
	
	int reservationAbleTerm(HashMap map);
	//checkList service
	
	//shutdown service
	
	//housePicture service
	
	//houseComment service
	
	//codetable service
}
