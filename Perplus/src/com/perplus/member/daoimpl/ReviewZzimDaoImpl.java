package com.perplus.member.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ReviewZzimDao;
import com.perplus.member.vo.ReviewZzimVo;
@Repository
public class ReviewZzimDaoImpl implements ReviewZzimDao{

	@Autowired
	private SqlSessionTemplate session;
	private String makeSql(){
		String sql = new Throwable().getStackTrace()[1].getMethodName();   //이전메소드(caller) 이름 가져오기
		return "reviewZzim." + sql;
	}
	
	@Override
	public int insertReviewZzim(ReviewZzimVo reviewZzim) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), reviewZzim);
	}
	@Override
	public int deleteReviewZzim(int reviewSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), reviewSerial);
	}
	@Override
	public List<ReviewZzimVo> selectReviewZzimByMemberEmail(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectList(makeSql(), memberEmail);
	}
}
