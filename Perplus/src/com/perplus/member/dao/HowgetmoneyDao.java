
package com.perplus.member.dao;
//1
import java.util.List;
import java.util.Map;

import com.perplus.member.vo.HowmoneyVo;

public interface HowgetmoneyDao {
	
	int insertHowgetmoney(HowmoneyVo howgetmoney);
	
	int deleteHowgetmoney(int accountSerial);
	
	List<HowmoneyVo> selectHowgetmoney(String memberEmail);
}
