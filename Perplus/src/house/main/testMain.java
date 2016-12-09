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

public class testMain {
	public static void main(String[] args) throws ParseException {
		ClassPathXmlApplicationContext abc = new ClassPathXmlApplicationContext("test-mvc.xml");
		
		HouseFilterDaoImpl hf = (HouseFilterDaoImpl)abc.getBean("houseFilterDaoImpl");
		HouseDaoImpl h = (HouseDaoImpl)abc.getBean("houseDaoImpl");
		
		String str1="2015-10-10";
		String str2="2015-10-12";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date1= sdf.parse(str1);
		Date date2= sdf.parse(str2);
		System.out.println(date1);
		System.out.println(date2);
		List list = Arrays.asList("에어컨");
		
		System.out.println(list);
		
		HashMap<String,Object> map = new HashMap<String, Object>();
		
//		map.put("startDay", date1);
//		map.put("endDay",date2);
//		map.put("list", list);
//		map.put("listSize", list.size());
		System.out.println(map);
		System.out.println(h.selectHouseListByFilter(map));
//		System.out.println(h.insertHouseFilter(new HouseFilterVo));
	}
}
