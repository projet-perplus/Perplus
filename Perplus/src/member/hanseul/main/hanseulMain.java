package member.hanseul.main;

import java.util.Date;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.member.dao.PaymentDao;
import com.perplus.member.dao.RejectDao;
import com.perplus.member.dao.ReviewZzimDao;
import com.perplus.member.dao.ShowMeTheMoneyDao;
import com.perplus.member.dao.TravelDao;
import com.perplus.member.vo.PaymentVo;
import com.perplus.member.vo.RejectVo;
import com.perplus.member.vo.ReviewZzimVo;
import com.perplus.member.vo.ShowMeTheMoneyVo;
import com.perplus.member.vo.TravelVo;

public class hanseulMain {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("/member/hanseul/main/test-mvc.xml");
		
		hanseulMain test = new hanseulMain();
//		test.travelTest(context);
//		test.showmethemoneyTest(context);
//		test.reviewZzimTest(context);
//		test.rejectTest(context);
//		test.paymentTest(context);
		
				
	}
	
	public void paymentTest(ClassPathXmlApplicationContext context) {
		PaymentDao dao = (PaymentDao)context.getBean("paymentDaoImpl");
		/**
		 * PaymentDao 검증
		 */
		PaymentVo payment = null; 
		//insert
		payment = new PaymentVo(1, "asd@asd.com", "ew", 1123, new Date(), "q", "qwe");
		dao.insertPayment(payment);
		//select
		System.out.println(dao.selectPaymentByCardSerial(1));
		//update
		payment = new PaymentVo(1, "asd@asd.com", "ew", 1123, new Date(), "r", "rrr");
		dao.updatePayment(payment);
		System.out.println(dao.selectPaymentByCardSerial(1));
		//delete
		dao.deletePayment(1);
	}

	public void rejectTest(ClassPathXmlApplicationContext context){
		RejectDao dao = (RejectDao)context.getBean("rejectDaoImpl");
		/**
		 * RejectDao 검증
		 */
		RejectVo reject = null;
		//insert
		reject = new RejectVo("asd@asd.com", "aqwe@awsedqw.com", "adssdfdsf", 3);
/*		dao.insertReject(reject);
		//select
		System.out.println(dao.selectReject(3));
		//delete
		dao.deleteReject(3);*/
	}
	
	public void reviewZzimTest(ClassPathXmlApplicationContext context){
		ReviewZzimDao dao = (ReviewZzimDao)context.getBean("reviewZzimDaoImpl");
		/**
		 * ReviewZzimDao 검증
		 */
		ReviewZzimVo rz = null;
		//insert
		rz = new ReviewZzimVo(333, "asd@asd.com");
		dao.insertReviewZzim(rz);
		
		//select
		System.out.println(dao.selectReviewZzimByMemberEmail("asd@asd.com"));
		
		//delete
		dao.deleteReviewZzim(333);
	}
	
	
	public void showmethemoneyTest(ClassPathXmlApplicationContext context){
		ShowMeTheMoneyDao dao = (ShowMeTheMoneyDao)context.getBean("showMeTheMoneyDaoImpl");
		
		/**
		 * ShowMeTheMoneyDao 검증
		 */
		ShowMeTheMoneyVo smtm = null;
		//insert
		smtm = new ShowMeTheMoneyVo(215, "asd@asd.com", false, new Date(2012-10-10), "asdasd", "asdasdasdaqweqwe", 23000, 23222222, "qweqwbank");
		dao.insertShowmethemoney(smtm);
		System.out.println("=====ShowMeTheMoneySerial=====");
		System.out.println(dao.selectShowmethemoneyByShowmethemoneySerial(22));
		System.out.println("*****just ShowMeTheMoney*****");
		System.out.println(dao.selectShowmethemoney("asd@asd.com"));
		//update
		smtm = new ShowMeTheMoneyVo(215, "asd@asd.com", false, new Date(2012-10-10), "asdasd", "asdasdasdaqweqwe", 9999, 99999, "qweqwbank");
		dao.updateShowmethemoney(smtm);
		System.out.println(dao.selectShowmethemoneyByShowmethemoneySerial(215));
		dao.deleteShowmethemoney(215);
	}
	
	public void travelTest(ClassPathXmlApplicationContext context){
		
		TravelDao travelDao = (TravelDao)context.getBean("travelDaoImpl");
		/** 
		 * Travel 검증 
		 * 
		 */
		TravelVo travel = null;
		//insert
		travel = new TravelVo(1, 112, 111, "asd@asd.com", new Date(2012-10-10), new Date(2012-10-15), 1231, new java.sql.Timestamp(112222211), 200000);
		travelDao.insertTravel(travel);
		
		//selectByCode
		travel = travelDao.selectTravelByTravelCode(11);
		System.out.println(travel);
		
		//selectByEmail
		List<TravelVo> list = travelDao.selectTravel("asd@asd.com"); 
		System.out.println(list);
		
		//update
		travelDao.updateTravel(new TravelVo(5, 11, 111, "asd@asd.com", new Date(2012-10-10), new Date(2012-10-15),
								1231, new java.sql.Timestamp(112222211), 11111100));
		System.out.println(travelDao.selectTravelByTravelCode(11));
		travelDao.deleteTravel(1);
	}
}
