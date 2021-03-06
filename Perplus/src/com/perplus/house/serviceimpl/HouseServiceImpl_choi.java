//package com.perplus.house.serviceimpl;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.perplus.house.dao.CheckListDao;
//import com.perplus.house.dao.CodetableDao;
//import com.perplus.house.dao.HouseDao;
//import com.perplus.house.dao.HouseFilterDao;
//import com.perplus.house.dao.HousePictureDao;
//import com.perplus.house.dao.ShutdownDao;
//import com.perplus.house.vo.CheckListVo;
//import com.perplus.house.vo.CodetableVo;
//import com.perplus.house.vo.HouseFilterVo;
//import com.perplus.house.vo.HousePictureVo;
//import com.perplus.house.vo.HouseVo;
//import com.perplus.house.vo.ShutdownVo;
//
//@Service
//public class HouseServiceImpl_choi {
//	
//	@Autowired
//	private HouseDao houseDao;
//	
//	@Autowired
//	private HouseFilterDao houseFilterDao;
//	
//	@Autowired
//	private CodetableDao codetableDao;
//	
//	@Autowired
//	private CheckListDao checkListDao;
//	
//	@Autowired
//	private ShutdownDao shutdownDao;
//	
//	@Autowired
//	private HousePictureDao housePictureDao;
//	
//	public void insertHouse(HouseVo houseVo){
//		houseDao.insertHouseFirst(houseVo);
//	}
//	
//	public void insertHouseFilter(HouseFilterVo houseFilter) {
//		houseFilterDao.insertHouseFilter(houseFilter);
//	}
//	
//	public List<CodetableVo> codetableFindByKind(int codeKind){
//		return codetableDao.codetableFindByKind(codeKind);
//	}
//	
//	public void insertChecklist(CheckListVo checkList){
//		checkListDao.insertChecklist(checkList);
//	}
//	
//	public void updateHouseFilter(HouseFilterVo houseFilter){
//		houseFilterDao.updateHouseFilter(houseFilter);
//	}
//	
//	public HouseFilterVo selectHouseFilter(int houseSerial){
//		return houseFilterDao.selectHouseFilterByHouseSerial(houseSerial);
//	}
//	
//	public void insertShutdown(ShutdownVo shutdown){
//		shutdownDao.insertShutdown(shutdown);
//	}
//	
//	public void insertHousePicture(HousePictureVo housePicture){
//		housePictureDao.insertHousePicture(housePicture);
//	}
//	
//	public HouseVo selectHouseByHouseSerial(int houseSerial){
//		return houseDao.selectHouseByHouseSerial(houseSerial);
//	}
//}
