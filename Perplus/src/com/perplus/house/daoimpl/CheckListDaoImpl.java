package com.perplus.house.daoimpl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.house.dao.CheckListDao;

@Repository
public class CheckListDaoImpl implements CheckListDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public int deleteChecklistByHouseSerial(int houseSerial) {
			return session.delete("checklist.deleteChecklistByHouseSerial",houseSerial);
	}
	
}
