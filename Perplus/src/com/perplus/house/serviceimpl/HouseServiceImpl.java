package com.perplus.house.serviceimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perplus.house.dao.CheckListDao;
import com.perplus.house.dao.CodetableDao;
import com.perplus.house.dao.HouseDao;
import com.perplus.house.dao.HouseFilterDao;
import com.perplus.house.dao.HousePictureDao;
import com.perplus.house.dao.ShutdownDao;
import com.perplus.house.service.HouseService;
import com.perplus.house.vo.CheckListVo;
import com.perplus.house.vo.CodetableVo;
import com.perplus.house.vo.HouseFilterVo;
import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;
import com.perplus.house.vo.ShutdownVo;
import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.dao.HouseZzimDao;
import com.perplus.member.vo.HouseCommentVo;

@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	private HouseFilterDao houseFilterDao;
	
	@Autowired
	private HouseDao houseDao;

	@Autowired
	private HousePictureDao housePictureDao;
	@Autowired
	private HouseCommentDao houseCommentDao;
	@Autowired
	private CheckListDao checkListDao;
	@Autowired
	private ShutdownDao shutdownDao;
	@Autowired
	private HouseZzimDao houseZzimDao;
	
	
	
	@Autowired
	private CodetableDao codetableDao;
	
	//house service
	
	@Override
	public void insertHouse(HouseVo houseVo){
		houseDao.insertHouseFirst(houseVo);
	}

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
		shutdownDao.deleteShutdownByHouseSerial(houseSerial);
		checkListDao.deleteChecklistByHouseSerial(houseSerial);
		houseFilterDao.deleteHouseFilterByHouseSerial(houseSerial);
		houseZzimDao.deleteHouseZzimByHouseSerial(houseSerial);
		houseDao.deleteHouseByHouseSerial(houseSerial);
	}

	@Override
	public void modifyHouse(HouseVo house) {
		houseDao.updateHouse(house);
	}

	@Override
	public HouseCommentVo selectHouseCommentOne(int commentSerial) {
		// TODO Auto-generated method stub
		return houseCommentDao.selectHouseCommentByCommentSerial(commentSerial);
	}

	@Override
	public List<HouseVo> selectMyHouse(String memberEmail) {
		List<HouseVo> list= houseDao.selectHouseListByMemberEmail(memberEmail);
		List<HouseVo> houseList = new ArrayList<>();
		for(int i=0;i<list.size();i++){
			HouseVo house =houseDao.selectHouseWithPictureAndFilterBySerial(list.get(i).getHouseSerial());
			houseList.add(house);
		}
		return houseList;
	}
	
	@Override
	public HouseVo selectHouseByHouseSerial(int houseSerial){
		return houseDao.selectHouseByHouseSerial(houseSerial);
	}
	
	
	
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
	
	@Override
	public HouseFilterVo selectHouseFilter(int houseSerial){
		return houseFilterDao.selectHouseFilterByHouseSerial(houseSerial);
	}
	
	//checklist service
	
	public void insertChecklist(CheckListVo checkList){
		checkListDao.insertChecklist(checkList);
	}

	//shutdown service
	@Override
	public void insertShutdown(ShutdownVo shutdown){
		shutdownDao.insertShutdown(shutdown);
	}
	
	//housePicture service
	@Override
	public void insertHousePicture(HousePictureVo housePicture){
		housePictureDao.insertHousePicture(housePicture);
	}
	
	//codetable service
	@Override
	public List<CodetableVo> codetableFindByKind(int codeKind){
		return codetableDao.codetableFindByKind(codeKind);
	}
	
	
	
	
	
	
	
	

}
