package com.perplus.house.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.house.dao.HousePictureDao;
import com.perplus.house.vo.HousePictureVo;

@Repository
public class HousePictureDaoImpl implements HousePictureDao{
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	public int insertHousePicture(HousePictureVo housePicture){
		return session.insert("housepicture.insertHousepicture", housePicture);
	}
	
	@Override
	public List<HousePictureVo> selectHousePictureByHouseSerial(int houseSerial) {
		return session.selectList("housepicture.selectHousepictureByHouseSerial",houseSerial);
	}

	@Override
	public int deleteHousePictureByHouseSerial(int houseSerial) {
		return session.delete("housepicture.deleteHousepictureByHouseSerial",houseSerial);
	}
}
