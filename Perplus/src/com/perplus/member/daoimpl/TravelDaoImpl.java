package com.perplus.member.daoimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.perplus.member.dao.TravelDao;
import com.perplus.member.vo.TravelVo;

@Repository
public class TravelDaoImpl implements TravelDao{

	@Autowired
	private SqlSessionTemplate session;
	private String makeSql(){
		String sql = new Throwable().getStackTrace()[1].getMethodName();
//		sql =sql.substring(0, 1).toUpperCase() + sql.substring(1);
		return "travel." + sql;
	}
	
	@Override
	public int insertTravel(TravelVo travel) {
		// TODO Auto-generated method stub
		return session.insert(makeSql(), travel);
	}

	@Override
	public int updateTravel(TravelVo travel) {
		// TODO Auto-generated method stub
		return session.update(makeSql(), travel);
	}

	@Override
	public int deleteTravel(int travelSerial) {
		// TODO Auto-generated method stub
		return session.delete(makeSql(), travelSerial);
	}

	@Override
	public List<TravelVo> selectTravel(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectList(makeSql(), memberEmail);
	}

	@Override
	public TravelVo selectTravelByTravelCode(int travelCode) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql(), travelCode);
	}

	@Override
	public TravelVo selectTravelByTravelSerial(int travelSerial) {
		// TODO Auto-generated method stub
		System.out.println("dao"+travelSerial);
		return session.selectOne(makeSql(), travelSerial);
	}

}
