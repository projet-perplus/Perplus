package review.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.review.daoimpl.ReviewCommentDaoImpl;
import com.perplus.review.daoimpl.ReviewDaoImpl;
import com.perplus.review.daoimpl.ReviewPictureDaoImpl;
import com.perplus.review.vo.ReviewPictureVo;

public class testMain {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext abc = new ClassPathXmlApplicationContext("test-mvc.xml");
		ReviewDaoImpl r = (ReviewDaoImpl)abc.getBean("reviewDaoImpl");
		ReviewCommentDaoImpl c = (ReviewCommentDaoImpl)abc.getBean("reviewCommentDaoImpl");
		ReviewPictureDaoImpl p =(ReviewPictureDaoImpl)abc.getBean("reviewPictureDaoImpl");
		
		System.out.println(r.selectReviewWithCommentAndPicture(2));
		
		//System.out.println(p.selectReviewPicturebySerial(1));
		//p.updateReviewPicture(new ReviewPictureVo(1,1,"바뀜"));
		//p.deleteReviewPicture(1,"zz");
		//p.insertReviewPicture(new ReviewPictureVo(2,2,"추가"));
	}
}
