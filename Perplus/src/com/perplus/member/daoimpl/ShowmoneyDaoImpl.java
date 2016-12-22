package com.perplus.member.daoimpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.ShowmoneyDao;
import com.perplus.member.vo.ShowmoneyVo;

@Repository
public class ShowmoneyDaoImpl implements ShowmoneyDao{

	@Autowired
	private SqlSessionTemplate session;
	private String makeSql(){
		String sql = new Throwable().getStackTrace()[1].getMethodName();   //이전메소드(caller) 이름 가져오기
		return "showmoney." + sql;
	}
	
	@Override
	public int insertShowmoney(ShowmoneyVo showmoney) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), showmoney);
	}
	@Override
	public int updateShowmoney(ShowmoneyVo showmoney) {
		// TODO Auto-generated method stub
		return session.update(makeSql(), showmoney);
	}
	@Override
	public int deleteShowmoney(int travelSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), travelSerial);
	}
	@Override
	public List<ShowmoneyVo> selectShowmoney(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectList(makeSql(), memberEmail);
	}
	@Override
	public ShowmoneyVo selectShowmoneyByTravelSerial(int travelSerial) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql(), travelSerial);
	}
/*	travel Serial 사용으로 삭제
	@Override
	public int selectShowmoneySerialSeq() {
		// TODO Auto-generated method stub
		System.out.println("실행"+makeSql());
		return session.selectOne(makeSql());
	}
*/
	@Override
	public List<ShowmoneyVo> selectShowmoneyByShowmoneyStatus(String memberEmail,
			int showmoneyStatus) {
		HashMap showmoneyParam = new HashMap();
		showmoneyParam.put("memberEmail", memberEmail);
		showmoneyParam.put("showmoneyStatus", showmoneyStatus);	
		return session.selectList(makeSql(), showmoneyParam);
	}
	
	
}
