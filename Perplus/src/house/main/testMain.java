package house.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.house.daoimpl.HouseFilterDaoImpl;

public class testMain {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext abc = new ClassPathXmlApplicationContext("spring-mvc.xml");
		
		HouseFilterDaoImpl h = (HouseFilterDaoImpl)abc.getBean("houseFilterDaoImpl");
		
		System.out.println(h.selectHouseFilterByHouseSerialWithJoin(25));
//		System.out.println(h.insertHouseFilter(new HouseFilterVo));
	}
}
