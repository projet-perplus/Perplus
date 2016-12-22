package house.main;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.house.daoimpl.HouseDaoImpl;
import com.perplus.house.daoimpl.HouseFilterDaoImpl;
import com.perplus.house.vo.HouseFilterVo;

public class testMain {
	public static void main(String[] args) throws ParseException {
		ClassPathXmlApplicationContext abc = new ClassPathXmlApplicationContext("test-mvc.xml");
		
		HouseFilterDaoImpl hf = (HouseFilterDaoImpl)abc.getBean("houseFilterDaoImpl");
		HouseDaoImpl h = (HouseDaoImpl)abc.getBean("houseDaoImpl");
		
//		System.out.println(h.selectHouseWithJoinOfDetailPage(1));
		HashMap map = new HashMap();
		map.put("date", "2017-02-05");
		map.put("serial", 1);
		System.out.println(h.reservationAbleTerm(map));
//		String str1="2016-12-16";
//		String str2="2017-01-11";
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date date1= sdf.parse(str1);
//		Date date2= sdf.parse(str2);
//		System.out.println(date1);
//		System.out.println(date2);
//		List list = Arrays.asList("에어컨");
//		
//		System.out.println(list);
//		Date currentTime = new Date();
//		System.out.println(currentTime);
//		HashMap<String,Object> map = new HashMap<String, Object>();
//		int guestNumber = 3;
//		
//		map.put("guestNumber", guestNumber);
//		map.put("range", "다인실");
//		map.put("housePriceMin",40000);
//		map.put("housePriceMax",60000);
//		map.put("bedRoomNumber", 5);
//		map.put("bathroomNumber", 3);
//		map.put("bedNumber", 4);
//		map.put("currentTime", currentTime);		
//		map.put("startDay", date1);
//		map.put("endDay",date2);
//		map.put("list", list);
//		map.put("listSize", list.size());
//		System.out.println(map);
//		System.out.println(h.selectHouseListByFilter(map));
//		System.out.println(h.insertHouseFilter(new HouseFilterVo));
	}
}
