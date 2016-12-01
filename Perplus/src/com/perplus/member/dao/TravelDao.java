package com.perplus.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.perplus.member.vo.TravelVo;

public interface TravelDao {

	/**
	 * 새로운 Travel 객체 insert
	 * @param session
	 * @param travel
	 * @return
	 */
	int insertTravel(SqlSession session, TravelVo travel);
	
	/**
	 * Travel 객체 update
	 * @param session
	 * @param travelSerial
	 * @return
	 */
	int updateTravel(SqlSession session, TravelVo travel);
	
	/**
	 * Travel 객체 travelSerial로 찾아 delete
	 * @param session
	 * @param travelSerial
	 * @return
	 */
	int deleteTravel(SqlSession session, int travelSerial);
	
	/**
	 * Travel 객체 전체 select
	 * @return
	 */
	List<TravelVo> selectTravel(SqlSession session);
	
	/**
	 * Travel 객체 중 Travel Code별 select 
	 * @return
	 */
	List<TravelVo> selectTravelByTravelCode(SqlSession session, int travelCode);
}
