package com.perplus.house.dao;

import com.perplus.house.vo.CheckListVo;

public interface CheckListDao {
	int deleteChecklistByHouseSerial(int houseSerial);

	int insertChecklist(CheckListVo checkList);
}
