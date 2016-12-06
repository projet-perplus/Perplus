package com.perplus.member.dao;
import java.util.List;
//1
import java.util.Map;

import com.perplus.member.vo.HouseZzimVo;

public interface HouseZzimDao {
	
	
	int insertHouseZzim(HouseZzimVo houseZzim);
	
	int deleteHouseZzimByEmail(Map<String, Object> map);
	
	List<HouseZzimVo> selectHouseZzimByEmail(String memberEmail);
}
