package com.perplus.house.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;
import com.perplus.member.vo.HouseCommentVo;

@Service
public interface HouseService_nr {
	//하우스 상세 페이지 조회
	HouseVo selectHouseForDetailPage(int houseSerial);
	//하우스 상세 페이지 조회시 시리얼로 사진조회
	List<HousePictureVo> selectHousePictureForDetailPage(int houseSerial);
	void removeHouse(int houseSerial);
	void modifyHouse(HouseVo house);
	HouseCommentVo selectHouseCommentOne(int commentSerial);
}
