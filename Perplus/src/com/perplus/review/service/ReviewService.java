package com.perplus.review.service;

import com.perplus.review.vo.ReviewVo;

public interface ReviewService {
	//등록
	void registerReview(ReviewVo review);
	//수정
	void modifyReview(ReviewVo review);
	//삭제
	void removeReview(int reviewSerial);
	//조회
	ReviewVo getReview(int reviewSerial);
}
