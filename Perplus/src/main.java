import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.review.daoimpl.ReviewCommentDaoImpl;
import com.perplus.review.daoimpl.ReviewDaoImpl;
import com.perplus.review.vo.ReviewCommentVo;

public class main {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("test-mvc.xml");
		ReviewDaoImpl r = (ReviewDaoImpl)ctx.getBean("reviewDaoImpl");
		ReviewCommentDaoImpl c=(ReviewCommentDaoImpl)ctx.getBean("reviewCommentDaoImpl");
		//r.deleteReview(3);
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		System.out.println(sdf.format(d));
		//r.updateReview(new ReviewVo(1,"skfo@mail.com","q","qq",1,d,25.3,25.3,1));
		//r.insertReview(new ReviewVo(3,"oh@mail.com","wewe","fgfg",3,d,26.5,30.0,2));
		c.insertReviewComment(new ReviewCommentVo(1,"haha@mail.com","dd",5,d));
	}
}
