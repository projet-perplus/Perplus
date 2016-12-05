package com.perplus.review.daoimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewPictureDao;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.util.Constants;

@Repository
public class ReviewPictureDaoImpl implements ReviewPictureDao{

	@Autowired
	private SqlSessionTemplate session;

	/**
	 * reviewSerial을 통해서 사진 전체조회
	 */
	@Override
	public List<ReviewPictureVo> selectReviewPictureListPaging(int reviewSerial, int page) {
		Map<String,Object> map = new HashMap<>();
		map.put("reviewSerial", reviewSerial);
		map.put("picturePerPage", Constants.ITEMS_PER_PAGE);
		map.put("page", page);
		return session.selectList("reviewPicture.selectPictureListPaging",map);
	}

	@Override
	public List<ReviewPictureVo> selectReviewPictureList(int reviewSerial) {
		return session.selectList("reviewPicture.selectPictureList",reviewSerial);
	}

	/**
	 * 사진하나만 조회
	 * @param reviewSerial
	 * @param pictureName
	 * @return 
	 */
	@Override
	public ReviewPictureVo selectReviewPictureOne(int pictureSerial) {
/*		Map<String,Object> map = new HashMap<>();
		map.put("pictureSerial", pictureSerial);
		map.put("reviewSerial", reviewSerial);*/
		return session.selectOne("reviewPicture.selectPictureOne",pictureSerial);	
	}

	/**
	 * 해당 리뷰의 모든 사진 count하는 메소드.
	 */
	@Override
	public int selectReviewPictureCount(int reviewSerial) {
		return session.selectOne("reviewPicture.selectPictureCount",reviewSerial);
	}
	
	/**
	 * 사진 수정하는 메소드
	 */
	@Override
	public int updateReviewPicture(ReviewPictureVo reviewPicture) {
		return session.update("reviewPicture.updatePicture", reviewPicture);
	}

	/**
	 * 사진 삭제하는 메소드
	 */
	@Override
	public int deleteReviewPicture(int pictureSerial) {
/*		Map<String,Object> map = new HashMap<>();
		map.put("pictureSerial", pictureSerial);
		map.put("reviewSerial", reviewSerial);*/
		return session.delete("reviewPicture.deletePicture", pictureSerial);
	}

	/**
	 *사진 추가하는 메소드
	 */
	@Override
	public int insertReviewPicture(ReviewPictureVo reviewPicture) {
		return session.insert("reviewPicture.insertPicture", reviewPicture);
	}
	/**
	 * 리뷰 삭제 시, 해당 사진을 모두 삭제하기 위한 메소드.
	 */
	@Override
	public int deleteAllReviewPicture(int reviewSerial) {
		return session.delete("reviewPicture.deleteAllReviewPicture",reviewSerial);
	}
	
	

}
