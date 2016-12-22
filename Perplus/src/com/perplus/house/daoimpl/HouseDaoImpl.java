package com.perplus.house.daoimpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.house.dao.HouseDao;
import com.perplus.house.vo.HouseVo;

@Repository
public class HouseDaoImpl implements HouseDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insertHouseFirst(HouseVo houseVo) {
		session.insert("house.insertHouseDefault", houseVo);
	}

	@Override
	public void updateHouse(HouseVo houseVo) {
		session.update("house.updateHouse",houseVo);
	}

	@Override
	public void deleteHouseByHouseSerial(int houseSerial) {
		session.delete("house.deleteHouseByHouseSerial",houseSerial);
	}

	//기본적인 House의 select 이며 update할 당시(집 상세 수정)에 사용
	@Override
	public HouseVo selectHouseByHouseSerial(int houseSerial) {
		System.out.println(houseSerial);
		HouseVo vo = session.selectOne("house.selectHouseByHouseSerial",houseSerial);
		System.out.println(vo);
		return vo;
	}
	//해당 회원이 등록한 숙소를 모두 select
	@Override
	public List<HouseVo> selectHouseListByMemberEmail(String memberEmail) {
		return session.selectList("house.selectHouseListByMemberEmail",memberEmail);
	}
	//4 부분으로 나뉘는 집 상세 페이지중에 메인 부분을 구성하는 부분을 join select
	@Override
	public HouseVo selectHouseWithJoinOfDetailPage(int houseSerial) {
		return session.selectOne("house.selectHouseByHouseSerialWithJoin",houseSerial);
	}

	@Override
	public List<HouseVo> selectHouseListByFilter(HashMap map) {
		return session.selectList("house.selectHouseListByFilter",map);
	}

	@Override
	public List<HouseVo> selectHouseBySectionAndFilter(HashMap map) {
		return session.selectList("house.selectHouseBySectionAndFilter",map);
	}

	@Override
	public HashMap selectHousePriceRange() {
		return session.selectOne("house.selectHousePriceRange");
	}

	@Override
	public int reservationAbleTerm(HashMap map) {
		return session.selectOne("house.reservationAbleTerm",map);
	}
	
		@Override
	public HouseVo selectHouseWithPictureAndFilterBySerial(int houseSerial) {
		return session.selectOne("house.selectHouseWithPictureAndFilterBySerial",houseSerial);
	}
	
}
