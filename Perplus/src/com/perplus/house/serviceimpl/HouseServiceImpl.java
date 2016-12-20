package com.perplus.house.serviceimpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perplus.house.dao.HouseDao;
import com.perplus.house.daoimpl.HouseDaoImpl;
import com.perplus.house.daoimpl.HouseFilterDaoImpl;
import com.perplus.house.service.HouseService;
import com.perplus.house.vo.HouseFilterVo;
import com.perplus.house.vo.HouseVo;

@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	private HouseFilterDaoImpl houseFilterDao;
	
	@Autowired
	private HouseDaoImpl houseDao;

	//house service
	//housefilter service
	
	@Override
	public void insertHouseFilter(HouseFilterVo houseFilter) {
		// TODO Auto-generated method stub
		houseFilterDao.insertHouseFilter(houseFilter);
	}

	@Override
	public void deleteHouseFilterByHouseSerial(int houseSerial) {
		// TODO Auto-generated method stub
		houseFilterDao.deleteHouseFilterByHouseSerial(houseSerial);
	}

	@Override
	public HouseFilterVo selectHouseFilterByHouseSerial(int houseSerial) {
		// TODO Auto-generated method stub
		return houseFilterDao.selectHouseFilterByHouseSerial(houseSerial);
	}

	@Override
	public HouseFilterVo selectHouseFilterByHouseSerialWithJoin(int houseSerial) {
		return houseFilterDao.selectHouseFilterByHouseSerialWithJoin(houseSerial);
	}

	@Override
	public void updateHouseFilter(HouseFilterVo houseFilter) {
		houseFilterDao.updateHouseFilter(houseFilter);
	}

	@Override
	public List<HouseVo> selectHouseBySectionAndFilter(HashMap map) {
		return houseDao.selectHouseBySectionAndFilter(map);
	}
	
	//checklist service
	
	//shutdown service
	
	//housePicture service
	
	//codetable service
}
