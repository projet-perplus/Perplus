package com.perplus.member.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.perplus.member.daoimpl.ChattingDaoImpl;
import com.perplus.member.daoimpl.ChattingLogDaoImpl;
import com.perplus.member.daoimpl.HouseCommentDaoImpl;
import com.perplus.member.daoimpl.HouseZzimDaoImpl;
import com.perplus.member.daoimpl.HowgetmoneyDaoImpl;
import com.perplus.member.daoimpl.MemberDaoImpl;
import com.perplus.member.daoimpl.PaymentDaoImpl;
import com.perplus.member.daoimpl.RejectDaoImpl;
import com.perplus.member.daoimpl.ReviewZzimDaoImpl;
import com.perplus.member.daoimpl.ShowMeTheMoneyDaoImpl;
import com.perplus.member.daoimpl.TravelDaoImpl;

@Service
public class MemberServiceImpl {

	@Autowired
	@Qualifier("chattingDaoImpl")
	private ChattingDaoImpl chattingDao;

	@Autowired
	@Qualifier("chattingLogDaoImpl")
	private ChattingLogDaoImpl chattingLogDao;
	
	
	
	@Autowired
	@Qualifier("houseCommentDaoImpl")
	private HouseCommentDaoImpl houseCommentDao;
	
	@Autowired
	@Qualifier("housezzimDaoImpl")
	private HouseZzimDaoImpl housezzimDao;
	
	@Autowired
	@Qualifier("howGetMoneyDaoImpl")
	private HowgetmoneyDaoImpl howGetMoneyDao;
	
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
