package review.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.perplus.review.daoimpl.ReviewCommentDaoImpl;
import com.perplus.review.daoimpl.ReviewDaoImpl;
import com.perplus.review.daoimpl.ReviewPictureDaoImpl;
import com.perplus.review.serviceimpl.ReviewServiceImpl;

public class testMain {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext abc = new ClassPathXmlApplicationContext("test-mvc.xml");
		ReviewDaoImpl r = (ReviewDaoImpl)abc.getBean("reviewDaoImpl");
		ReviewCommentDaoImpl c = (ReviewCommentDaoImpl)abc.getBean("reviewCommentDaoImpl");
		ReviewPictureDaoImpl p =(ReviewPictureDaoImpl)abc.getBean("reviewPictureDaoImpl");
		
		//System.out.println(r.selectReviewWithCommentAndPicture(1));
		
/*		//System.out.println(p.selectReviewPicturebySerial(1));
		//p.updateReviewPicture(new ReviewPictureVo(1,1,"바뀜"));
		//p.deleteReviewPicture(1,"zz");
		//p.insertReviewPicture(new ReviewPictureVo(2,2,"추가"));
		System.out.println(p.selectReviewPicturebySerial(2));
		System.out.println(p.selectReviewPictureOne(2, "ㄹ"));
		
		System.out.println(c.selectReviewCommentListBySerial(1));*/
		ReviewServiceImpl service = (ReviewServiceImpl)abc.getBean("reviewServiceImpl");
/*		List<ReviewPictureVo> list = new ArrayList<>();
		//list.add(new ReviewPictureVo(4,1,"3-1"));
		//list.add(new ReviewPictureVo(4,2,"3-2"));
		Map<String,Object> map = new HashMap<>();*/
		//Date d = new Date();
/*		map.put("list", list);
		map.put("review", new ReviewVo(4,"oh@mail.com","bb","bbb",3,d,33.3,33.3,3));*/
//		service.registerReview(map);
		
		//System.out.println(r.selectReviewBySerialAndEmail(1, "skfo@mail.com"));
		//c.insertReviewComment(new ReviewCommentVo(4,2,"oh@mail.com","오오ㅗ",3,d));
		//System.out.println(c.selectReviewCommentBySerialAndEmail(3, "oh@mail.com"));
		//System.out.println(p.selectReviewPicturebySerial(1));
		//System.out.println(p.selectReviewPictureOne(2, 1));
		//p.updateReviewPicture(new ReviewPictureVo(2,1,2,"바뀜"));
		//p.deleteReviewPicture(3);
		//service.removeReview(3);
		//System.out.println(p.selectReviewPictureCount(1));
		//System.out.println(c.selectReviewCommentCount(1));
		//System.out.println(p.selectReviewPictureListPaging(1, 1));
		System.out.println(p.selectReviewPictureList(1));
	}
}
