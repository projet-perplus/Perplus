package com.perplus.member.dao;
//1
import java.util.List;
import java.util.Map;

import com.perplus.member.vo.HouseCommentVo;

public interface HouseCommentDao {
	
	int insertHouseComment(HouseCommentVo houseComment);
	
	int deleteHouseComment(int commentSerial);
	
	int modifyHouseComment(HouseCommentVo houseComment);
	
	List<HouseCommentVo> selectHouseCommentByEmail(String memberEmail);
	
	List<HouseCommentVo> selectHouseCommentBySerial(int houseSerial);
	
	List<HouseCommentVo> selectHouseCommentJoinHouse(String memberEmail);
	
}
