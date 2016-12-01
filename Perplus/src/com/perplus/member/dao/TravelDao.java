package com.perplus.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.perplus.member.vo.TravelVo;

public interface TravelDao {

	/**
	 * Travel 객체 insert
	 * @param session
	 * @param travel
	 * @return
	 */
	int insertTravel(SqlSession session, TravelVo travel);
}
