import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.member.dao.ShowMeTheMoneyDao;

public class test {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-mvc.xml");
		ShowMeTheMoneyDao dao = (ShowMeTheMoneyDao)context.getBean("showMeTheMoney");

		
	}
}
