package com.perplus.member.dao;
//1
import java.util.List;
import java.util.Map;

import com.perplus.member.vo.HouseCommentVo;

public interface HouseCommentDao {
	
	int insertHouseComment(HouseCommentVo houseComment);//숙소 후기 등록
	
	int deleteHouseComment(Map<String, Object> map);//숙소 후기 삭제
	
	int modifyHouseComment(HouseCommentVo houseComment);//숙소 후기 수정
	
	List<HouseCommentVo> selectHouseComment(Map<String, Object> map);//시리얼번호, 이메일로 숙소리뷰찾기
}
