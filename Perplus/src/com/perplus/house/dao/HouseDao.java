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
	
	List selectHouseListByFilter(HashMap map);
	
	List<HouseVo> selectHouseBySectionAndFilter(HashMap map);
	
	HashMap selectHousePriceRange();
	
	int reservationAbleTerm(HashMap map);
	
	HouseVo selectHouseWithPictureAndFilterBySerial(int houseSerial);
}
