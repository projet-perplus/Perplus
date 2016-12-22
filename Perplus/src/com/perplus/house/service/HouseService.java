package com.perplus.house.service;

import java.util.HashMap;
import java.util.List;

import com.perplus.house.vo.CheckListVo;
import com.perplus.house.vo.CodetableVo;
import com.perplus.house.vo.HouseFilterVo;
import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;
import com.perplus.house.vo.ShutdownVo;
import com.perplus.member.vo.HouseCommentVo;

public interface HouseService {
	//house service
	
	//하우스 등록
	void insertHouse(HouseVo houseVo);
	
	//하우스 상세 페이지 조회
	HouseVo selectHouseForDetailPage(int houseSerial);
	
	//하우스 상세 페이지 조회시 시리얼로 사진조회
	List<HousePictureVo> selectHousePictureForDetailPage(int houseSerial);
	
	//하우스 삭제
	void removeHouse(int houseSerial);
	
	//하우스 시리얼로 단일 조회
	HouseVo selectHouseByHouseSerial(int houseSerial);
	
	//하우스 업데이트
	void modifyHouse(HouseVo house);
	
	//내가 등록한 하우스 조회
	List<HouseVo> selectMyHouse(String memberEmail);

	//하우스 코멘트 조회
	HouseCommentVo selectHouseCommentOne(int commentSerial);
	
	
	
	
	//housefilter service
	
	void insertHouseFilter(HouseFilterVo houseFilter);
	
	void deleteHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerial(int houseSerial);
	
	HouseFilterVo selectHouseFilterByHouseSerialWithJoin(int houseSerial);
	
	void updateHouseFilter(HouseFilterVo houseFilter);
	
	List<HouseVo> selectHouseBySectionAndFilter(HashMap map);
	

	//하우스필터 하우스시리얼로 단일 조회
	HouseFilterVo selectHouseFilter(int houseSerial);

	
	HashMap selectHousePriceRange();

	
	int reservationAbleTerm(HashMap map);
	//checkList service
	
	//체크리스트 등록
	void insertChecklist(CheckListVo checkList);
	
	
	
	//shutdown service
	
	//shutdown 등록
	void insertShutdown(ShutdownVo shutdown);
	
	
	
	//housePicture service
	
	//하우스픽쳐 등록
	void insertHousePicture(HousePictureVo housePicture);

	
	
	//houseComment service
	
	
	
	//codetable service
	
	//코드테이블 종류로 조회
	List<CodetableVo> codetableFindByKind(int codeKind);
	
	

	
}
