package com.perplus.review.daoimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewPictureDao;
import com.perplus.review.vo.ReviewPictureVo;

@Repository
public class ReviewPictureDaoImpl implements ReviewPictureDao{

	@Autowired
	private SqlSessionTemplate session;

	/**
	 * reviewSerial을 통해서 사진 전체조회
	 */
	@Override
	public List<ReviewPictureVo> selectReviewPicturebySerial(int reviewSerial) {
		return session.selectList("reviewPicture.selectPictureList",reviewSerial);
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
	public int deleteReviewPicture(int reviewSerial, String pictureName) {
		Map<String,Object> map = new HashMap<>();
		map.put("reviewSerial", reviewSerial);
		map.put("pictureName", pictureName);
		return session.delete("reviewPicture.deletePicture", map);
	}

	/**
	 *  
	 */
	@Override
	public int insertReviewPicture(ReviewPictureVo reviewPicture) {
		return session.insert("reviewPicture.insertPicture", reviewPicture);
	}
	

}
