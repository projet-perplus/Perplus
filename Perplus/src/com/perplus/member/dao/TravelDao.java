package com.perplus.member.dao;
//1
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.perplus.member.vo.TravelVo;

public interface TravelDao {

	/**
	 * 새로운 Travel 객체 insert
	 * @param travel
	 * @return
	 */
	int insertTravel(TravelVo travel);
	
	/**
	 * Travel 객체 update
	 * @param travelSerial
	 * @return
	 */
	int updateTravel(TravelVo travel);
	
	/**
	 * Travel 객체 travelSerial로 찾아 deleteㄴㄴㄴㄴ
	 * @param travelSerial
	 * @return
	 */
	int deleteTravel(int travelSerial);
	
	/**
	 * memberEmail의 Travel 객체 전체 select
	 * @return
	 */
	List<TravelVo> selectTravel(String memberEmail);
	
	/**
	 * Travel 객체 중 Travel Code별 select 
	 * @return
	 */
	TravelVo selectTravelByTravelCode(int travelCode);
	
	/**
	 * Travel 객체 중 Travel Code별 select 
	 * @return
	 */
	TravelVo selectTravelByTravelSerial(int travelSerial);
}
