
package com.perplus.member.dao;
//1
import java.util.List;
import java.util.Map;

import com.perplus.member.vo.HowgetmoneyVo;

public interface HowgetmoneyDao {
	
	int insertHowgetmoney(HowgetmoneyVo howgetmoney);
	
	int deleteHowgetmoney(HowgetmoneyVo howgetmoney);
	
	List<HowgetmoneyVo> selectHowgetmoney(String memberEmail);
}
