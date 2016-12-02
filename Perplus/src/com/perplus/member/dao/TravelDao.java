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
	 * Travel 객체 travelSerial로 찾아 delete
	 * @param travelSerial
	 * @return
	 */
	int deleteTravel(int travelSerial);
	
	/**
	 * Travel 객체 전체 select
	 * @return
	 */
	List<TravelVo> selectTravel();
	
	/**
	 * Travel 객체 중 Travel Code별 select 
	 * @return
	 */
	List<TravelVo> selectTravelByTravelCode(int travelCode);
}
