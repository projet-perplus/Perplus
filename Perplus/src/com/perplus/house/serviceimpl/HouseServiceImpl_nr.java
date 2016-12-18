package com.perplus.house.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perplus.house.dao.CheckListDao;
import com.perplus.house.dao.HouseDao;
import com.perplus.house.dao.HouseFilterDao;
import com.perplus.house.dao.HousePictureDao_nr;
import com.perplus.house.dao.ShutdownDao;
import com.perplus.house.service.HouseService_nr;
import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;
import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.dao.HouseZzimDao;
@Service
public class HouseServiceImpl_nr implements HouseService_nr{

	@Autowired
	private HouseDao houseDao;
	@Autowired
	private HousePictureDao_nr housePictureDao;
	@Autowired
	private HouseCommentDao houseCommentDao;

	@Override
	public HouseVo selectHouseForDetailPage(int houseSerial) {
		return houseDao.selectHouseWithJoinOfDetailPage(houseSerial);
	}

	@Override
	public List<HousePictureVo> selectHousePictureForDetailPage(int houseSerial) {
		return housePictureDao.selectHousePictureByHouseSerial(houseSerial);
	}

	@Override
	public void removeHouse(int houseSerial) {
		housePictureDao.deleteHousePictureByHouseSerial(houseSerial);
		houseCommentDao.deleteAllCommentBySerial(houseSerial);
		houseDao.deleteHouseByHouseSerial(houseSerial);
		
	}
}
	

