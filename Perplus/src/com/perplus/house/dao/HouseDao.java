package com.perplus.house.dao;

import java.util.HashMap;
import java.util.List;

import com.perplus.house.vo.HouseVo;

public interface HouseDao {
	
	void insertHouseFirst(HouseVo houseVo);
	
	void updateHouse(HouseVo houseVo);
	
	void deleteHouseByHouseSerial(int houseSerial);
	
	HouseVo selectHouseByHouseSerial(int houseSerial);
	
	HouseVo selectHouseWithJoinOfDetailPage(int houseSerial);
	
	List<HouseVo> selectHouseListByMemberEmail(String memberEmail);
	
	List<HouseVo> selectHouseListByFilter(HashMap map);
	
	List<HouseVo> selectHouseBySectionAndFilter(HashMap map);
	
	HashMap selectHousePriceRangeBySection(HashMap map);
	
	int reservationAbleTerm(HashMap map);
	
	
}
