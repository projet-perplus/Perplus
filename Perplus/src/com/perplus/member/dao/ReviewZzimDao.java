package com.perplus.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.perplus.member.vo.ReviewZzimVo;

public interface ReviewZzimDao {
	
	/**
	 * 새로운 ReviewZzimVo 객체 insert
	 * @param ReviewZzimVo
	 * @return
	 */
	int insertReviewZzim(ReviewZzimVo reviewZzim);
	
	/**
	 * ReviewZzimVo 객체 delete - reviewSerial에 해당하는 값 조회 후 삭제
	 * @param reviewSerial
	 * @return
	 */
	int deleteReviewZzim(int reviewSerial);
	
	/**
	 * 전체 ReviewZzimVo 객체 select
	 * @return
	 */
	List<ReviewZzimVo> selectReviewZzim(String memberEmail);
	
}
