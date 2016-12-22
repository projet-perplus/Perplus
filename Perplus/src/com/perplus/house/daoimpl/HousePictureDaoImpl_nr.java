package com.perplus.house.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.house.dao.HousePictureDao_nr;
import com.perplus.house.vo.HousePictureVo;

@Repository
public class HousePictureDaoImpl_nr implements HousePictureDao_nr{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<HousePictureVo> selectHousePictureByHouseSerial(int houseSerial) {
		return session.selectList("housepicture.selectHousepictureByHouseSerial",houseSerial);
	}

	@Override
	public int deleteHousePictureByHouseSerial(int houseSerial) {
		return session.delete("housepicture.deleteHousepictureByHouseSerial",houseSerial);
	}
	
	
}
