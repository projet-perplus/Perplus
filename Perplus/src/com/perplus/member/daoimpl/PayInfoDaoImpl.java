package com.perplus.member.daoimpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.PayInfoDao;
import com.perplus.member.dao.ShowmoneyDao;
import com.perplus.member.vo.PayInfoVo;
import com.perplus.member.vo.ShowmoneyVo;

@Repository
public class PayInfoDaoImpl implements PayInfoDao{

	@Autowired
	private SqlSessionTemplate session;
	private String makeSql(){
		String sql = new Throwable().getStackTrace()[1].getMethodName();   //이전메소드(caller) 이름 가져오기
		return "showmoney." + sql;
	}
	@Override
	public int insertPayInfo(PayInfoVo payInfo) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), payInfo);
	}
	@Override
	public int updatePayInfo(PayInfoVo payInfo) {
		// TODO Auto-generated method stub
		return session.update(makeSql(), payInfo);
	}
	@Override
	public int deletePayInfo(int travelSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), travelSerial);
	}
	@Override
	public List<PayInfoVo> selectPayInfo(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectList(makeSql(), memberEmail);
	}
	@Override
	public PayInfoVo selectPayInfoByTravelSerial(int travelSerial) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql(), travelSerial);
	}

	
	
}
