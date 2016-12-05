package com.perplus.member.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.member.dao.PaymentDao;
import com.perplus.member.dao.RejectDao;
import com.perplus.member.dao.ReviewZzimDao;
import com.perplus.member.dao.ShowMeTheMoneyDao;
import com.perplus.member.dao.TravelDao;
import com.perplus.member.vo.PaymentVo;

@Service
public class MemberServiceImpl_Jeong {
	
	@Autowired
	@Qualifier("paymentDaoImpl")
	private PaymentDao paymentDao;
	
	@Autowired
	@Qualifier("rejectDaoImpl")
	private RejectDao rejectDao;
	
	@Autowired
	@Qualifier("reviewZzimDaoImpl")
	private ReviewZzimDao reviewZzimDao;
	
	@Autowired
	@Qualifier("showMeTheMoneyDaoImpl")
	private ShowMeTheMoneyDao showmethemoneyDao;
	
	@Qualifier("travelDaoImpl")
	private TravelDao travelDao;
	
	
	public boolean isExistPayment(int cardSerial){
		return paymentDao.selectPaymentByCardSerial(cardSerial) != null; // 객체가 있으면 true 반환
	}
	
	public void registerPayment(PaymentVo payment) throws Exception{
	
		// 1. 이메일로 사용자의 등록된 카드 전부 조회
		String memberEmail = payment.getMemberEmail();
		List<PaymentVo> paymentList = paymentDao.selectPayment(memberEmail);

		// 2. 조회된 카드 객체 들에서 새로 입력된 카드 번호 비교
		for(PaymentVo gunbygun : paymentList){
			if(gunbygun.getCardNumber() == payment.getCardNumber()){
		// 3. 같은 값이 있으면 Exception 발생
				throw new Exception("입력하신 카드는 이미 등록된 카드 입니다.");
			}
		}
		// 4. 등록처리
		paymentDao.insertPayment(payment);
	}
	
	public void modifyPayment(){}
	
	
	
	
	
	
	
	
	

	
	
	
	
	
}
