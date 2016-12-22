//package com.perplus.house.serviceimpl;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.perplus.house.dao.CheckListDao;
//import com.perplus.house.dao.HouseDao;
//import com.perplus.house.dao.HouseFilterDao;
//import com.perplus.house.dao.HousePictureDao_nr;
//import com.perplus.house.dao.ShutdownDao;
//import com.perplus.house.service.HouseService_nr;
//import com.perplus.house.vo.HousePictureVo;
//import com.perplus.house.vo.HouseVo;
//import com.perplus.member.dao.HouseCommentDao;
//import com.perplus.member.dao.HouseZzimDao;
//import com.perplus.member.vo.HouseCommentVo;
//@Service
//public class HouseServiceImpl_nr implements HouseService_nr{
//
//	@Autowired
//	private HouseDao houseDao;
//	@Autowired
//	private HousePictureDao_nr housePictureDao;
//	@Autowired
//	private HouseCommentDao houseCommentDao;
//	@Autowired
//	private HouseFilterDao houseFilterDao;
//	@Autowired
//	private CheckListDao checkListDao;
//	@Autowired
//	private ShutdownDao shutdownDao;
//	@Autowired
//	private HouseZzimDao houseZzimDao;
//
//	@Override
//	public HouseVo selectHouseForDetailPage(int houseSerial) {
//		return houseDao.selectHouseWithJoinOfDetailPage(houseSerial);
//	}
//
//	@Override
//	public List<HousePictureVo> selectHousePictureForDetailPage(int houseSerial) {
//		return housePictureDao.selectHousePictureByHouseSerial(houseSerial);
//	}
//
//	@Override
//	public void removeHouse(int houseSerial) {
//		housePictureDao.deleteHousePictureByHouseSerial(houseSerial);
//		houseCommentDao.deleteAllCommentBySerial(houseSerial);
//		shutdownDao.deleteShutdownByHouseSerial(houseSerial);
//		checkListDao.deleteChecklistByHouseSerial(houseSerial);
//		houseFilterDao.deleteHouseFilterByHouseSerial(houseSerial);
//		houseZzimDao.deleteHouseZzimByHouseSerial(houseSerial);
//		houseDao.deleteHouseByHouseSerial(houseSerial);
//	}
//
//	@Override
//	public void modifyHouse(HouseVo house) {
//		houseDao.updateHouse(house);
//	}
//
//	@Override
//	public HouseCommentVo selectHouseCommentOne(int commentSerial) {
//		// TODO Auto-generated method stub
//		return houseCommentDao.selectHouseCommentByCommentSerial(commentSerial);
//	}
//
//	@Override
//	public List<HouseVo> selectMyHouse(String memberEmail) {
//		List<HouseVo> list= houseDao.selectHouseListByMemberEmail(memberEmail);
//		List<HouseVo> houseList = new ArrayList<>();
//		for(int i=0;i<list.size();i++){
//			HouseVo house =houseDao.selectHouseWithPictureAndFilterBySerial(list.get(i).getHouseSerial());
//			houseList.add(house);
//		}
//		return houseList;
//	}
//	
//	
//	
//	
//}
//	
//
