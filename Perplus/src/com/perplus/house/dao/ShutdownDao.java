package com.perplus.house.dao;

import com.perplus.house.vo.ShutdownVo;

public interface ShutdownDao {
	int deleteShutdownByHouseSerial(int houseSerial);
	
	int insertShutdown(ShutdownVo shutdown);
}
