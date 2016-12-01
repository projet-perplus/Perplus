package com.perplus.member.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.perplus.member.dao.ChattingLogDao;
import com.perplus.member.dao.ShowMeTheMoneyDao;
import com.perplus.member.daoimpl.ChattingDaoImpl;
import com.perplus.member.daoimpl.ChattingLogDaoImpl;
import com.perplus.member.daoimpl.HousecommentDaoImpl;
import com.perplus.member.daoimpl.HousezzimDaoImpl;
import com.perplus.member.daoimpl.HowGetMoneyDaoImpl;
import com.perplus.member.daoimpl.MemberDaoImpl;
import com.perplus.member.daoimpl.PaymentDaoImpl;
import com.perplus.member.daoimpl.RejectDaoImpl;
import com.perplus.member.daoimpl.ReviewZzimDaoImpl;
import com.perplus.member.daoimpl.ShowMeTheMoneyDaoImpl;
import com.perplus.member.daoimpl.TravelDaoImpl;

public class MemberServiceImpl {
	
	@Autowired
	@Qualifier("chattingDaoImpl")
	private ChattingDaoImpl chattingdao;
	
	
	
	
	
	@Autowired
	@Qualifier("chattingLogDaoImpl")
	private ChattingLogDaoImpl chattingLogDao;
	
	
	
	@Autowired
	@Qualifier("houseCommentDaoImpl")
	private HousecommentDaoImpl houseCommentDao;
	
	@Autowired
	@Qualifier("housezzimDaoImpl")
	private HousezzimDaoImpl housezzimDao;
	
	@Autowired
	@Qualifier("howGetMoneyDaoImpl")
	private HowGetMoneyDaoImpl howGetMoneyDao;
	
	@Autowired
	@Qualifier("memberDaoImpl")
	private MemberDaoImpl memberDao;
	
	@Autowired
	@Qualifier("paymentDaoImpl")
	private PaymentDaoImpl paymentDao;
	
	@Autowired
	@Qualifier("rejectDaoImpl")
	private RejectDaoImpl rejectDao;
	
	@Autowired
	@Qualifier("reviewZzimDaoImpl")
	private ReviewZzimDaoImpl reviewZzimDao;
	
	@Autowired
	@Qualifier("showMeTheMoneyDaoImpl")
	private ShowMeTheMoneyDaoImpl showmethemoneyDao;
	
	@Autowired
	@Qualifier("travelDaoImpl")
	private TravelDaoImpl travelDao;
	
	
}
