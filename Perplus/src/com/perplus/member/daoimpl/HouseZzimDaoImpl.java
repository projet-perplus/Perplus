
package com.perplus.member.daoimpl;
import java.util.List;
//1
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.member.dao.HouseZzimDao;
import com.perplus.member.vo.HouseZzimVo;

@Repository
public class HouseZzimDaoImpl implements HouseZzimDao{

	@Autowired
	private SqlSessionTemplate session;

	@Override//찜등록
	public int insertHouseZzim(HouseZzimVo houseZzim) {
		System.out.println("dfgdfgdf");
		return session.insert("houseZzim.insertHouseZzim", houseZzim);
	}

	@Override//찜 삭제
	public int deleteHouseZzimByEmail(int houseZzimSerial) {
		return session.delete("houseZzim.deleteHouseZzimByEmail", houseZzimSerial);
	}
	
	@Override
	public int deleteHouseZzimByHouseSerial(int houseSerial) {
		return session.delete("houseZzim.deleteHouseZzimByHouseSerial",houseSerial);
	}

	@Override//내가 찜한 house 찾기
	public List<HouseZzimVo> selectHouseZzimByEmail(String memberEmail){
		return session.selectList("houseZzim.selectHouseZzimByEmail",memberEmail);
	}

	@Override
	public List<HouseZzimVo> houseZzimJoinHouseJoinHousePicture(String memberEmail) {
		return session.selectList("houseZzim.houseZzimJoinHouse",memberEmail);
	}
	
	
}
