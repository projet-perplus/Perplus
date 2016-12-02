package com.perplus.member.dao;
//1
import java.util.List;

import com.perplus.member.vo.ShowMeTheMoneyVo;

public interface ShowMeTheMoneyDao {
	
	/**
	 * 새로운 ShowMeTheMoney 객체 insert
	 * @param ShowMeTheMoney
	 * @return
	 */
	int insertShowmethemoney(ShowMeTheMoneyVo showmethemoney);
	
	/**
	 * ShowMeTheMoney 객체 update
	 * @param travel
	 * @return
	 */
	int updateShowmethemoney(ShowMeTheMoneyVo showmethemoney);
	
	/**
	 * ShowMeTheMoney 객체 시리얼로 삭제
	 * @param showmethemoney
	 * @return
	 */
	int deleteShowmethemoney(int showmethemoneySerial);
	
	/**
	 * 모든 ShowMeTheMoney 객체 select
	 * @return
	 */
	List<ShowMeTheMoneyVo> selectShowmethemoney();
	
	/**
	 * 스테이터스 별 ShowMeTheMoney 객체 select
	 * @return
	 */
	List<ShowMeTheMoneyVo> selectShowmethemoneyByShowmethemoneySerial(int showmethemoneySerial);
	
}
