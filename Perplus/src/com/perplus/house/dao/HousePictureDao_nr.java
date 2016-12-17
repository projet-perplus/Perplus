package com.perplus.house.dao;

import java.util.List;

import com.perplus.house.vo.HousePictureVo;

public interface HousePictureDao_nr {
	List<HousePictureVo> selectHousePictureByHouseSerial(int houseSerial);
	int deleteHousePictureByHouseSerial(int houseSerial);
}
