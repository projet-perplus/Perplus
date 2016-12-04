package house.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.review.daoimpl.ReviewCommentDaoImpl;
import com.perplus.review.daoimpl.ReviewDaoImpl;
import com.perplus.review.daoimpl.ReviewPictureDaoImpl;

public class testMain {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext abc = new ClassPathXmlApplicationContext("spring-mvc.xml");
		
		ReviewDaoImpl r = (ReviewDaoImpl)abc.getBean("reviewDaoImpl");
		ReviewCommentDaoImpl c = (ReviewCommentDaoImpl)abc.getBean("reviewCommentDaoImpl");
		
		ReviewPictureDaoImpl p =(ReviewPictureDaoImpl)abc.getBean("reviewPictureDaoImpl");
		
		System.out.println(r.selectReviewWithCommentAndPicture(1));
	}
}
