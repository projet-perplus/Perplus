package com.perplus.review.daoimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewCommentDao;
import com.perplus.review.vo.ReviewCommentVo;

@Repository
public class ReviewCommentDaoImpl implements ReviewCommentDao{

	@Autowired
	private SqlSessionTemplate session;
	/**
	 * 리뷰 코멘트 등록하는 메소드
	 */
	@Override
	public int insertReviewComment(ReviewCommentVo reviewComment) {
		return session.insert("reviewComment.insertComment", reviewComment);
	}
	/**
	 * 내가 작성한 comment select하는 메소드
	 */
	@Override
	public ReviewCommentVo selectReviewCommentBySerialAndEmail(int reviewSerial, String memberEmail) {
		Map<String, Object> map = new HashMap<>();
		map.put("reviewSerial", reviewSerial);
		map.put("memberEmail", memberEmail);
		return session.selectOne("reviewComment.selectMyComment", map);
	}

	/**
	 * 해당 리뷰에 있는 모든 comment select하는 메소드
	 */
	@Override
	public List<ReviewCommentVo> selectReviewCommentListBySerial(int reviewSerial) {
		return session.selectList("reviewComment.selectCommentList", reviewSerial);
	}

	/**
	 * 이메일과 리뷰serial을 통해 comment 수정하는 메소드
	 */
	@Override
	public int updateReviewComment(ReviewCommentVo reviewComment) {
		return session.update("reviewComment.updateComment",reviewComment);
	}
	/**
	 * reviewSerial과 memberEmail을 통해 review 삭제하는 메소드.
	 */
	@Override
	public int deleteReviewComment(int reviewSerial, String memberEmail) {
		Map<String, Object> map = new HashMap<>();
		map.put("reviewSerial", reviewSerial);
		map.put("memberEmail", memberEmail);
		return session.delete("reviewComment.deleteComment", map);
	}


	
}
