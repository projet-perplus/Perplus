package com.perplus.house.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perplus.house.dao.HouseDao;
import com.perplus.house.dao.HousePictureDao_nr;
import com.perplus.house.service.HouseService_nr;
import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;
@Service
public class HouseServiceImpl_nr implements HouseService_nr{

	@Autowired
	private HouseDao houseDao;
	private HousePictureDao_nr housePictureDao;
	
	@Override
	public HouseVo selectHouseForDetailPage(int houseSerial) {
		return houseDao.selectHouseWithJoinOfDetailPage(houseSerial);
	}

	@Override
	public List<HousePictureVo> selelctHousePictureForDetailPage(int houseSerial) {
		return housePictureDao.selectHousePictureByHouseSerial(houseSerial);
	}
	
}
