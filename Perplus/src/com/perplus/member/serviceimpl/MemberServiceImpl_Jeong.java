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
import com.perplus.member.vo.RejectVo;
import com.perplus.member.vo.ReviewZzimVo;
import com.perplus.member.vo.ShowMeTheMoneyVo;

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
	
	/**
	 * Payment 관련 Service
	 * @param payment
	 * @throws Exception
	 */
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
	
	public void removePayment(int cardSerial) throws Exception{
		
		PaymentVo payment = null;
		// 1. 카드 시리얼로 객체 조회 조회
		payment = paymentDao.selectPaymentByCardSerial(cardSerial);

		// 2. 객체 조회 되었는지 확 인 후
		if(payment!=null){
			// 삭제 처리
			paymentDao.deletePayment(cardSerial);
		}else{ //null 이면 -> 검색 되지 않았으면
			throw new Exception("해당 카드가 존재하지 않습니다.");
		}
	}
	
	public List<PaymentVo> getPayment(String memberEmail) throws Exception{
		List<PaymentVo> paymentList = null;
		paymentList = paymentDao.selectPayment(memberEmail);
		if (paymentList == null){
			throw new Exception("등록된 카드가 없습니다.");
		}
		return paymentList;
	}
	
	/**
	 * Reject 관련 Service
	 * @param reject
	 * @throws Exception
	 */
	public void registerReject(RejectVo reject) throws Exception{
		// travelSerial로 테이블 검색
		if(rejectDao.selectReject(reject.getTravelSerial()) != null){
			throw new Exception("이미 거부 하셨습니다.");
		}else{ // 존재하지 않으면 reject 등록 
			rejectDao.insertReject(reject);
		}
	}

	public RejectVo getReject(int travelSerial) throws Exception{
		RejectVo reject = null;
		reject = rejectDao.selectReject(travelSerial); // travel Serial 로 reject 검색 
		if (reject == null){ // 해당하는 reject가 없으면
			throw new Exception("거부되지 않았습니다.");
		}else{ // 해당하는 reject가 잇으면 반환
			return rejectDao.selectReject(travelSerial);			
		}
	}
	
	public void removeReject(int travelSerial) throws Exception {
		if (getReject(travelSerial) != null){
			rejectDao.deleteReject(travelSerial);			
		}
	}
	
	/**
	 * reviewZzim 관련 Service
	 * @param reviewZzim
	 * @throws Exception
	 */
	public void registerReviewZzim(ReviewZzimVo reviewZzim) throws Exception{
		
		// 이메일로 검색해서 리뷰 리스트 조회
//		try{// 조회시 등록된 리뷰찜이 없는 경우 exception 발생
			List<ReviewZzimVo> zzimList = searchReviewZzim(reviewZzim.getMemberEmail());
			
			for(ReviewZzimVo zzim : zzimList){
				//매개변수로 받은 리뷰 시리얼과 같은 리뷰가 있는지 조회
				if(zzim.getReviewSerial() == reviewZzim.getReviewSerial()){//있으면 Exception 
					throw new Exception("이미 찜된 리뷰입니다.");				
				}
			}
//		}catch (Exception e) {
			//  리뷰찜이 없는 경우 등록 처리
			reviewZzimDao.insertReviewZzim(reviewZzim);
//		}
	}

	public List<ReviewZzimVo> searchReviewZzim(String memberEmail) throws Exception{
		List<ReviewZzimVo> zzimList = null;
		zzimList = reviewZzimDao.selectReviewZzimByMemberEmail(memberEmail);
		if (zzimList != null){
			return zzimList;
		}else{
			throw new Exception("등록된 리뷰 찜이 없습니다.");
		}
	}
	
	public void removeReviewZzim(ReviewZzimVo reviewZzim) throws Exception{
		// 이메일로 검색해서 리뷰 리스트 조회
		List<ReviewZzimVo> zzimList = searchReviewZzim(reviewZzim.getMemberEmail());
		
		for(ReviewZzimVo zzim : zzimList){
			//매개변수로 받은 리뷰 시리얼과 같은 리뷰가 있는지 조회
			if(zzim.getReviewSerial() == reviewZzim.getReviewSerial()){//있으면 Exception
				reviewZzimDao.deleteReviewZzim(zzim.getReviewZzimSerial());			
			}
		}
	}
	
	public void registerShowmethemoney(){}
	
	public ShowMeTheMoneyVo getShowmethemoneyBySerial(int showmethemoneySerial) throws Exception{
		ShowMeTheMoneyVo showmethemoney = null;
		//Serial로 DB 조회
		showmethemoney = showmethemoneyDao.selectShowmethemoneyByShowmethemoneySerial(showmethemoneySerial);
		if (showmethemoney != null){ // 조회된 객체 return
			return showmethemoneyDao.selectShowmethemoneyByShowmethemoneySerial(showmethemoneySerial);
		}else{ // 조회된 객체가 없으면 exception 발생
			throw new Exception("Serial로 검색한 대금 내역이 존재하지 않습니다.");
		}
		
	}
	
	public List<ShowMeTheMoneyVo> getAllShowmethemoney(String memberEmail) throws Exception{
		List<ShowMeTheMoneyVo> smtmList = null;
		// Email로 객체 리스트 조회
		smtmList = showmethemoneyDao.selectShowmethemoney(memberEmail);
		if(smtmList !=null){ // 조회된 리스트가 있으면 리턴
			return smtmList;
		}else{ // 없으면 Exception 발생
			throw new Exception("대금 내역이 없습니다.");
		}
	}
	
	public void removeShowmethemoney(int showmethemoneySerial) throws Exception{
		try {
			ShowMeTheMoneyVo showmethemoney = getShowmethemoneyBySerial(showmethemoneySerial);
			showmethemoneyDao.deleteShowmethemoney(showmethemoneySerial);
		} catch (Exception e) {
			throw new Exception("삭제할 내역이 없습니다.");
		}
	}
	
	
	
	
	

	
	
	
	
	
}
