package com.perplus.member.dao;

import java.util.Map;

import com.perplus.member.vo.HouseZzimVo;

public interface HouseZzimDao {
	
	
	int insertHouseZzim(HouseZzimVo houseZzim);
	
	int deleteHouseZzim(Map<String, Object> map);
}
