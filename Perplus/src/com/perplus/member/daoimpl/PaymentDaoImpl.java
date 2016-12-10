package com.perplus.member.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.PaymentDao;
import com.perplus.member.vo.PaymentVo;

@Repository
public class PaymentDaoImpl implements PaymentDao{

   @Autowired
   private SqlSessionTemplate session;
   private String makeSql(){
      String sql = new Throwable().getStackTrace()[1].getMethodName();   //이전메소드(caller) 이름 가져오기
      sql = sql.toUpperCase() + sql.substring(1);   // 첫글자 대문자 + 나머지 문자
      return "showmethemoney" + sql;
   }
	
	@Override
	public int insertPayment(PaymentVo payment) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), payment);
	}

	@Override
	public int updatePayment(PaymentVo payment) {
		// TODO Auto-generated method stub
		return session.update(makeSql(), payment);
	}

	@Override
	public int deletePayment(int cardSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), cardSerial);
	}

	@Override
	public List<PaymentVo> selectPayment(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectList(makeSql(), memberEmail);
	}

	@Override
	public PaymentVo selectPaymentByCardSerial(int cardSerial) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql(), cardSerial);
	}

}
