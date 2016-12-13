package com.perplus.util;

public interface Constants {

	//Code_Category
	String NOTICE_BOARD_PREFIX = "notice_prefix";
	int ITEMS_PER_PAGE = 15;//한 페이지당 보여줄 item의 수.
	int PAGES_PER_PAGEGROUP = 10; //한 페이지 그룹당 묶을 페이지수.
	
	//review_Category
	int REVIEWCOMMENT_PER_PAGE = 5;//한 페이지당 보여줄 item의 수.
	int REVIEW_COMMENT_PAGEGROUP = 10; //한 페이지 그룹당 묶을 페이지수.
	
	//Travel_Code
	static final int TRAVEL_CODE_PREVIOUS = 0; //과거 여행 상태
	static final int TRAVEL_CODE_RESER_STANDBY = 11; // 에약 후  승인 대기 중
	static final int TRAVEL_CODE_RESER_APPROVAL = 12; // Host 승인 후 결제 대기
	static final int TRAVEL_CODE_PAYED = 13; // 결제 완료
	static final int TRAVEL_CODE_TRAVELING = 14; // 여행중인 상태
	
	
	//Code_Table
	//CheckList
	int CODE_KIND_CHECKLIST_COMFORT_FACILITY = 15;
	int CODE_KIND_CHECKLIST_SAFE_FACILITY = 16;
	int CODE_KIND_CHECKLIST_COMMON_FACILITY = 17;
}
