package com.perplus.house.dao;

import com.perplus.house.vo.HouseFilterVo;

public interface HouseFilterDao {

	public void insertHouseFilter(HouseFilterVo houseFilter);
	public void updateHouseFilter(HouseFilterVo houseFilter);
	public HouseFilterVo selectHouseFilterBySerial(int serial);
	public void deleteHouseFilterBySerial(int serial);
}
