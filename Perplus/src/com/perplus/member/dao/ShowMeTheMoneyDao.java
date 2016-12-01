package com.perplus.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.perplus.member.vo.ShowMeTheMoneyVo;

public interface ShowMeTheMoneyDao {
	
	/**
	 * 새로운 ShowMeTheMoney 객체 insert
	 * @param session
	 * @param ShowMeTheMoney
	 * @return
	 */
	int insertTravel(SqlSession session, ShowMeTheMoneyVo showmethemoney);
	
	/**
	 * ShowMeTheMoney 객체 update
	 * @param session
	 * @param travel
	 * @return
	 */
	int updateTravel(SqlSession session, ShowMeTheMoneyVo showmethemoney);
	
	/**
	 * ShowMeTheMoney 객체 시리얼로 삭제
	 * @param session
	 * @param showmethemoney
	 * @return
	 */
	int deleteTravel(SqlSession session, int showmethemoneySerial);
	
	/**
	 * 모든 ShowMeTheMoney 객체 select
	 * @return
	 */
	List<ShowMeTheMoneyVo> selectTravel(SqlSession session);
	
	/**
	 * 스테이터스 별 ShowMeTheMoney 객체 select
	 * @return
	 */
	List<ShowMeTheMoneyVo> selectTravelByShowmethemoneySerial(SqlSession session, int showmethemoneySerial);
	
}
