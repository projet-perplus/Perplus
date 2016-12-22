package com.perplus.member.dao;
//1
import java.util.List;

import com.perplus.member.vo.ShowmoneyVo;

public interface ShowmoneyDao {
	
	/**
	 * 새로운 Showmoney 객체 insert
	 * @param Showmoney
	 * @return
	 */
	int insertShowmoney(ShowmoneyVo showmoney);
	
	/**
	 * Showmoney 객체 update
	 * @param travel
	 * @return
	 */
	int updateShowmoney(ShowmoneyVo showmoney);
	
	/**
	 * Showmoney 객체 시리얼로 삭제
	 * @param showmoney
	 * @return
	 */
	int deleteShowmoney(int travelSerial);
	
	/**
	 * memberEmail의 모든 Showmoney 객체 select
	 * @return
	 */
	List<ShowmoneyVo> selectShowmoney(String memberEmail);
	
	/**
	 * 여행 시리얼로 Showmoney 객체 select
	 * @return
	 */
	ShowmoneyVo selectShowmoneyByTravelSerial(int travelSerial);
	
	/**
	 * memberEmail의 각 status 별 Showmoney 객체 select
	 * @parameterType hashmap 타입으로 인스턴스 전달
	 * @return
	 */
	List<ShowmoneyVo> selectShowmoneyByShowmoneyStatus(String memberEmail, int showmoneyStatus);
	
	/**
	 * ShowmoneySerial 시퀀스 조회
	 * 초기 값 10000
	 */
//	int selectShowmoneySerialSeq();	//travelSerial 사용으로 삭제
}
