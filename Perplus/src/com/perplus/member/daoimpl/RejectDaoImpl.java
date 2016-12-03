package com.perplus.member.daoimpl;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.perplus.member.dao.RejectDao;
import com.perplus.member.vo.RejectVo;

public class RejectDaoImpl implements RejectDao{

   @Autowired
   private SqlSessionTemplate session;
   private String makeSql(){
      String sql = new Throwable().getStackTrace()[1].getMethodName();   //이전메소드(caller) 이름 가져오기
      sql = sql.toUpperCase() + sql.substring(1);   // 첫글자 대문자 + 나머지 문자
      return "showmethemoney" + sql;
   }
	
	@Override
	public int insertReject(SqlSession session, RejectVo reject) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), reject);
	}

	@Override
	public int deleteReject(SqlSession session, int travelSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), travelSerial);
	}

	@Override
	public RejectVo selectReject(SqlSession session, int travelSerial) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql(), travelSerial);
	}

}
