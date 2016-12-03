package com.perplus.member.daoimpl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.RejectDao;
import com.perplus.member.vo.RejectVo;

@Repository
public class RejectDaoImpl implements RejectDao{
	
   @Autowired
   private SqlSessionTemplate session;
   private String makeSql(){
	  String sql = new Throwable().getStackTrace()[1].getMethodName();   //이전메소드(caller) 이름 가져오기
      return "reject." + sql;
   }
	
	@Override
	public int insertReject(RejectVo reject) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), reject);
	}

	@Override
	public int deleteReject(int travelSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), travelSerial);
	}

	@Override
	public RejectVo selectReject(int travelSerial) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql(), travelSerial);
	}

}
