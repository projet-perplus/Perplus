package com.perplus.member.dao;
//1
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.perplus.member.vo.PaymentVo;
import com.perplus.member.vo.ReviewZzimVo;

public interface PaymentDao {

	/**
	 * 새로운 PaymentVo 객체 insert
	 * @param PaymentVoVo
	 * @return
	 */
	int insertPayment(PaymentVo payment);
	
	/**
	 * PaymentVo 객체 update
	 * @param payment
	 * @return
	 */
	int updatePayment(PaymentVo payment);
	
	/**
	 * PaymentVo 객체 delete - memberEmail에 해당하는 값 조회 후 삭제
	 * @param memberEmail
	 * @return
	 */
	int deletePayment(int cardSerial);
	
	/**
	 * PaymentVo 객체 select
	 * @return cardSerial
	 */
	List<PaymentVo> selectPayment(String memberEmail);
	
	/**
	 * PaymentVo 객체 cardSerial로 select
	 * @param cardSerial
	 * @return 
	 */
	PaymentVo selectPaymentByCardSerial(int cardSerial);
	
	/**
	 * CardSerial 시퀀스 조회
	 * 초기 값 10000
	 */
	int selectCardSerialSeq();
}
