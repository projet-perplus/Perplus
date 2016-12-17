package com.perplus.house.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;

@Service
public interface HouseService_nr {
	HouseVo selectHouseForDetailPage(int houseSerial);
	List<HousePictureVo> selelctHousePictureForDetailPage(int houseSerial);
}
