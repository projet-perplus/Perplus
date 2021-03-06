package com.perplus.util;

public interface Constants {

	/**
	 * Setting constants value range
	 * 
	 * 	- Member (100 ~ 199)
	 * 			travel : 100 ~ 109
	 * 			showmoney : 110 ~ 119
	 * 
	 * 
	 * 	- House (200 ~ 299)
	 * 			CodeTable(checkList) : 400 ~ 410
	 * 
	 * 	- Review (300 ~ 399)
	 * 
	 * 
	 * 	- Commons (400 ~ 499)
	 * 			Maker : 420 ~ 429
	 * 
	 */
	//Code_Category
	String NOTICE_BOARD_PREFIX = "notice_prefix";
	int ITEMS_PER_PAGE = 15;//한 페이지당 보여줄 item의 수.
	int PAGES_PER_PAGEGROUP = 10; //한 페이지 그룹당 묶을 페이지수.
	
	//review_Category
	int REVIEWCOMMENT_PER_PAGE = 5;//한 페이지당 보여줄 item의 수.
	int REVIEW_COMMENT_PAGEGROUP = 10; //한 페이지 그룹당 묶을 페이지수.
	
	//Travel_Code
	static final int TRAVEL_CODE_PREVIOUS = 100; //과거 여행 상태
	static final int TRAVEL_CODE_RESER_STANDBY = 101; // 에약 후  승인 대기 중
	static final int TRAVEL_CODE_RESER_APPROVAL = 102; // Host 승인 후 결제 대기
	static final int TRAVEL_CODE_PAYED = 103; // 결제 완료
	static final int TRAVEL_CODE_TRAVELING = 104; // 여행중인 상태
	
	//ShowMeTheMoney
	static final int SHOWMONEY_STATUS_RECEIVE_INTENDED = 110;	// 수령 예정 내역
	static final int SHOWMONEY_STATUS_RECEIVE_COMPLETED = 111;	// 수령 완료 내역
	
	//Code_Table
	//CheckList
	int CODE_KIND_CHECKLIST_COMFORT_FACILITY = 201;
	int CODE_KIND_CHECKLIST_SAFE_FACILITY = 202;
	int CODE_KIND_CHECKLIST_COMMON_FACILITY = 203;
	
	//MarkerConstant
	int MARKER_CONSTANT_TOUR = 211;
	int MARKER_CONSTANT_RESTAURANT = 212;
	int MAKRER_CONSTANT_HOUSE = 213;
	int MARKER_CONSTANT_REGISTER = 214;
	
	//
	
}
