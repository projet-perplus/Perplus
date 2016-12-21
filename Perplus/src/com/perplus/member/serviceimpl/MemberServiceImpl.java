package com.perplus.member.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.house.dao.HouseDao;
import com.perplus.house.vo.HouseVo;
import com.perplus.member.dao.ChattingDao;
import com.perplus.member.dao.ChattingLogDao;
import com.perplus.member.dao.HouseCommentDao;
import com.perplus.member.dao.HouseZzimDao;
import com.perplus.member.dao.HowmoneyDao;
import com.perplus.member.dao.MemberDao;
import com.perplus.member.dao.PaymentDao;
import com.perplus.member.dao.RejectDao;
import com.perplus.member.dao.ReviewZzimDao;
import com.perplus.member.dao.ShowMeTheMoneyDao;
import com.perplus.member.dao.TravelDao;
import com.perplus.member.service.MemberService;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowmoneyVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.PaymentVo;
import com.perplus.member.vo.RejectVo;
import com.perplus.member.vo.ReviewZzimVo;
import com.perplus.member.vo.ShowMeTheMoneyVo;
import com.perplus.member.vo.TravelVo;
import com.perplus.util.Constants;
import com.perplus.util.PagingBean;

@Service
public class MemberServiceImpl implements MemberService{


	
	@Autowired
	@Qualifier("chattingDaoImpl")
	private ChattingDao chattingDao;
	
	@Autowired
	@Qualifier("chattingLogDaoImpl")
	private ChattingLogDao chattingLogDao;
	
	@Autowired
	@Qualifier("houseCommentDaoImpl")
	private HouseCommentDao houseCommentDao;
	
	@Autowired
	@Qualifier("houseZzimDaoImpl")
	private HouseZzimDao houseZzimDao;
	
	@Autowired
	@Qualifier("howmoneyDaoImpl")
	private HowmoneyDao howgetmoneyDao;

	@Autowired
	@Qualifier("memberDaoImpl")
	private MemberDao memberDao;

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
	
	@Autowired
	private HouseDao houseDao;
	
	
	/*
	 * chatting Service
	 */
	
	@Override//채팅방 등록.
	public void createChatting(ChattingVo chatting){
		String memberEmail = chatting.getMemberEmail();
		String chattingPartner = chatting.getChattingPartner();
		if(findByChatting(memberEmail,chattingPartner)==null){
			chattingDao.creatChatting(chatting);
		}
	}
	
	@Override//채팅방 삭제
	public void deleteChatting(int chattingNumber){
		chattingDao.deleteChatting(chattingNumber);
	}
	
	@Override//내가속한 채팅방 가져오기
	public List<ChattingVo> selectMyChatting(String memberEmail){	
		return chattingDao.selectMyChatting(memberEmail);
	}
	
	@Override//상대와 내가 속한 채팅방이 있는지..
	public ChattingVo findByChatting(String partnerEmail, String memberEmail){
		Map<String, Object> map = new HashMap<>();
		map.put("chattingPartner", partnerEmail);//상대방 email
		map.put("memberEmail", memberEmail);//나의 email
		return chattingDao.findByChattingNumber(map);
	}
	
	@Override//선택한 채팅방과 채팅로그 가져오기
	public List<ChattingVo> selectJoinChattingAndChattingLog(String memberEmail){
		return chattingDao.chattingJoin(memberEmail);
	}
	
	/*
	 * chattingLog Service
	 */
	
	@Override//채팅로그 등록
	public void insertChattingLog(ChattingLogVo chattingLog){
		chattingLogDao.insertChattingLog(chattingLog);
	}
	
	@Override//채팅로그 조회하기
	public List<ChattingLogVo> selectChattingLog(int chattingNumber){
		return chattingLogDao.selectChattingLog(chattingNumber);
	}
	
	/*
	 * HouseComment Service
	 */
	
	@Override//houseComment 등록
	public int insertHouseComment(HouseCommentVo houseComment){
		HouseVo house = houseDao.selectHouseByHouseSerial(houseComment.getHouseSerial());
		int houseRating = house.getHouseRating()+houseComment.getCommentRating();
		houseCommentDao.insertHouseComment(houseComment);
		return houseRating;
	}
	
	@Override//houseComment 삭제
	public int deleteHouseComment(int commentSerial){
		HouseCommentVo houseComment = houseCommentDao.selectHouseCommentByCommentSerial(commentSerial);
		HouseVo house = houseDao.selectHouseByHouseSerial(houseComment.getHouseSerial());
		int commentRating = houseComment.getCommentRating();
		int houseRating =house.getHouseRating()-commentRating;
		houseCommentDao.deleteHouseComment(commentSerial);
		return houseRating;
	}
	
	
	@Override
	public void deleteAllHouseComment(int houseSerial) {
		houseCommentDao.deleteAllCommentBySerial(houseSerial);
	}

	@Override//houseComment 수정
	public void modifyHouseComment(HouseCommentVo houseComment){
		houseCommentDao.modifyHouseComment(houseComment);
	}
	
	public List<HouseCommentVo> select(String memberEmail){
		return houseCommentDao.selectHouseCommentJoinHouse(memberEmail);
	}
	
	@Override//serial로 조회하기(하우스 정보에서 뿌려주기)
	public Map<String,Object> selectHouseCommentBySerial(int houseSerial, int page){
		Map<String, Object> map = new HashMap<>();
		List<HouseCommentVo> list = houseCommentDao.selectHouseCommentBySerial(houseSerial,page);
		map.put("commentList", list);
		int totalComments = houseCommentDao.selectHouseCommentCount(houseSerial);
		PagingBean bean = new PagingBean(totalComments, page);
		map.put("pageBean", bean);
		map.put("totalComments",totalComments);
		return map;
	}
	
	@Override//memberEmail로 조회하기(내정보에서 내가 쓴 댓글 보기)
	public List<HouseCommentVo> selectHouseCommentByEmail(String memberEmail){
		return houseCommentDao.selectHouseCommentByEmail(memberEmail);
	}
	
	
	/*
	 * HouseZzim Service
	 */
	
	@Override//찜 등록
	public void insertHouseZzim(HouseZzimVo houseZzim){
		houseZzimDao.insertHouseZzim(houseZzim);
	}
	
	@Override//찜삭제
	public void deleteHouseZzimBySerial(int houseZzimSerial){
		houseZzimDao.deleteHouseZzimByEmail(houseZzimSerial);
	}
	
	@Override//내 찜 찾기
	public List<HouseZzimVo> selectHouseZzimByEmail(String memberEmail){
		return houseZzimDao.selectHouseZzimByEmail(memberEmail);
	}
	
	@Override
	public HouseZzimVo selectHouseZzimByEmailAndHouseSerial(String memberEmail, int houseSerial) {
		return houseZzimDao.selectHouseZzimByEmailAndHouseSerial(memberEmail, houseSerial);
	}

	public List<HouseZzimVo> houseZzimJoinHouseJoinHousePicture(String memberEmail){
		return houseZzimDao.houseZzimJoinHouseJoinHousePicture(memberEmail);
	}
	
	@Override
	public HouseZzimVo selectHouseZzimBySerial(int houseZzimSerial) {
		return houseZzimDao.selectHouseZzimBySerial(houseZzimSerial);
	}
	
	
	/*
	 * howgetmoney Service
	 */
	

	@Override//결제수단 등록
	public void insertHowmoney(HowmoneyVo howgetmoney){
		howgetmoneyDao.insertHowgetmoney(howgetmoney);
	}
	
	@Override//결제수단 삭제
	public void deleteHowmoney(int accountSerial){
		howgetmoneyDao.deleteHowgetmoney(accountSerial);
	}
	
	@Override//결제수단 조회
	public List<HowmoneyVo> selectHowmoney(String memberEmail){
		return howgetmoneyDao.selectHowgetmoney(memberEmail);
	}
	
	
	/*	
	 * memberService
	 */
	
	@Override//email 등록 여부
	public boolean isIdExist(String memberEmail){
		boolean flag = memberDao.selectMemberCountFindByEmail(memberEmail)==1;
		return flag;
	}
	
	@Override//회원 등록
	public int joinMember(MemberVo member) throws Exception{
		if(isIdExist(member.getMemberEmail())){
			throw new Exception(member.getMemberEmail()+"는 이미 등록된 아이디입니다.");
		}
		return memberDao.insertMember(member);
	}
	
	@Override//회원 수정
	public void updateMember(MemberVo newData){
		memberDao.updateMember(newData);
	}
	
	@Override//회원 비밀번호 수정
	public void updateMemberPassword(String memberEmail, String memberPassword){
		Map<String, Object> map = new HashMap<>();
		map.put("memberEmail", memberEmail);
		map.put("memberPassword", memberPassword);
		memberDao.updateMemberPassword(map);
	}
	
	@Override//회원 삭제
	public void deleteMember(String memberEmail){
		memberDao.deleteMember(memberEmail);
	}
	
	@Override//회원조회
	public MemberVo selectMemberFindByEmail(String memberEmail){
		return memberDao.selectMemberFindByEmail(memberEmail);
	}
	
	@Override
	public void deleteMemberPicture(String memberPicture){
		memberDao.deleteMemberPicture(memberPicture);
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
	
	public PaymentVo getPaymentByCardSerial(int CardSerial) throws Exception{
		PaymentVo payment = null;
		payment = paymentDao.selectPaymentByCardSerial(CardSerial);
		if(payment == null){
			throw new Exception("등록된 카드가 없습니다.");
		}
		return payment;
	}
	
	public List<PaymentVo> getPayment(String memberEmail) throws Exception{
		List<PaymentVo> paymentList = null;
		paymentList = paymentDao.selectPayment(memberEmail);
		if (paymentList == null){
			throw new Exception("등록된 카드가 없습니다.");
		}
		return paymentList;
	}
	
	public int getCardSerialSeq() {
		return paymentDao.selectCardSerialSeq();
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
	
	

	@Override
	public void insertReviewZzim(ReviewZzimVo reviewZzim) {
		reviewZzimDao.insertReviewZzim(reviewZzim);
	}

	@Override
	public void deleteReviewZzimByReviewZzimSerial(int reviewZzimSerial) {
		System.out.println("Ddddd");
		reviewZzimDao.deleteReviewZzim(reviewZzimSerial);
		
	}

	@Override
	public ReviewZzimVo selectReviewZzimByEmailAndReviewSerial(String memberEmail, int reviewSerial) {
		return reviewZzimDao.selectReviewZzimByMemberEmailAndreviewSerial(memberEmail, reviewSerial);
	}

	@Override
	public ReviewZzimVo selectReviewZzimByReviewZzimSerial(int reviewZzimSerial) {
		return reviewZzimDao.selectReviewZzimByReviewZzimSerial(reviewZzimSerial);
	}

	/**
	 * showmethemoney 관련 Service
	 * @param showmethemoney
	 */
	public void registerShowmethemoney(ShowMeTheMoneyVo showmethemoney){
		try {
			getShowmethemoneyBySerial(showmethemoney.getShowmethemoneySerial());
		} catch (Exception e) {
			showmethemoneyDao.insertShowmethemoney(showmethemoney);
		}
		
	}
	
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
		ShowMeTheMoneyVo showmethemoney = null;
		try {
			showmethemoney = getShowmethemoneyBySerial(showmethemoneySerial);
			showmethemoneyDao.deleteShowmethemoney(showmethemoney.getShowmethemoneySerial());
		} catch (Exception e) {
			throw new Exception("삭제할 내역이 없습니다.");
		}
	}
	
	public int getShowmethemoneySerialSeq() {
		return showmethemoneyDao.selectShowmethemoneySerialSeq();
	}
	
	public List<ShowMeTheMoneyVo> getShowmethemoneyByShowmethemoneyStatus(String memberEmail,
			int  showmethemoneyStatus) throws Exception {
		List<ShowMeTheMoneyVo> list = null;
		list = showmethemoneyDao.selectShowmethemoneyByShowmethemoneyStatus(memberEmail, showmethemoneyStatus);
		if (list !=null){
			return list;
		}else{
			throw new Exception("해당 내역이 존재하지 않습니다.");
		}
	}
	
	/**
	 * Travel  관련 Service
	 * @param travel
	 * @throws Exception
	 */
	public void registerTravel(TravelVo travel) throws Exception{
		List<TravelVo> travelList = null;
		try { // 이메일로 모든 Travel 객체 조회
			travelList = getAllTravel(travel.getMemberEmail()); // 조회된 객체가 없으면 Exception 발생 후 잡아서 등록
		} catch (Exception e) {
			// TODO Auto-generated catch block
			travelDao.insertTravel(travel);
		}
		
		for(TravelVo tmp : travelList){
			//이전 여행을 제외한 모든 객체에서 같은 House Serial 이 존재하는지 조회
			//한번 예약한 숙소는 여행이 끝나기 전까지 다시 예약 할 수 없음
			if(tmp.getTravelCode() != Constants.TRAVEL_CODE_PREVIOUS){
				if(tmp.getHouseSerial() == travel.getHouseSerial()){
					throw new Exception("이미 예약된 숙소 입니다.");
				}
			}
		}
		travelDao.insertTravel(travel);	// 같은게 없으면 등록
	}
	
	public TravelVo getTravelByTravelCode(int travelCode) throws Exception{
		TravelVo travel = null; 
		travel = travelDao.selectTravelByTravelCode(travelCode);
		if(travel != null){ // 조회된 값이 있다면 객체 리턴
			return travel;
		}else{
			throw new Exception("조회된 예약 내역이 없습니다.");
		}
	}
	
	public List<TravelVo> getAllTravel(String memberEmail) throws Exception{
		List<TravelVo> travelList = null;
		travelList = travelDao.selectTravel(memberEmail);
		
		if(travelList != null){ // 조회된 값이 있다면 객체 리턴
			return travelList;
		}else{
			throw new Exception("조회된 예약 내역이 없습니다.");
		}
	}
	
	public TravelVo getTravelbyTravelSerial(int travelSerial) throws Exception{ // 시리얼로 조회
		TravelVo travel = null;
		travel = travelDao.selectTravelByTravelSerial(travelSerial);
		if(travel != null){ // 조회된 값이 있다면 객체 리턴
			return travel;
		}else{
			throw new Exception("조회된 예약 내역이 없습니다.");
		}
	}
	
	public void removeTravel(int travelSerial) throws Exception{
		TravelVo travel = null;
		
		try {
			travel = getTravelbyTravelSerial(travelSerial); // 시리얼로 여행 조회 후 없으면
		} catch (Exception e) {
			throw new Exception("해당 여행이 존재하지 않습니다.");
		}
		travelDao.deleteTravel(travel.getTravelSerial());
		
	}
	
}
