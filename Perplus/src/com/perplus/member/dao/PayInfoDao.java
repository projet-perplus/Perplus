package com.perplus.member.dao;
//1
import java.util.List;

import com.perplus.member.vo.PayInfoVo;

public interface PayInfoDao {
	
	/**
	 * 새로운 PayInfo 객체 insert
	 * @param PayInfo
	 * @return
	 */
	int insertPayInfo(PayInfoVo payInfo);
	
	/**
	 * PayInfo 객체 update
	 * @param payInfo
	 * @return
	 */
	int updatePayInfo(PayInfoVo payInfo);
	
	/**
	 * PayInfo 객체 시리얼로 삭제 - TravelSerial 사용
	 * @param travelSerial
	 * @return
	 */
	int deletePayInfo(int travelSerial);
	
	/**
	 * memberEmail의 모든 PayInfo 객체 select
	 * @return
	 */
	List<PayInfoVo> selectPayInfoByMemberEmail(String memberEmail);
	
	/**
	 * 여행 시리얼로 PayInfo 객체 select
	 * @return
	 */
	PayInfoVo selectPayInfoByTravelSerial(int travelSerial);
	
}
