package com.perplus.review.daoimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perplus.review.dao.ReviewCommentDao;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.util.Constants;

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
	public ReviewCommentVo selectReviewCommentBySerial(int commentSerial) {
/*		Map<String, Object> map = new HashMap<>();
		map.put("commentSerial", commentSerial);
		map.put("memberEmail", memberEmail);*/
		return session.selectOne("reviewComment.selectMyComment", commentSerial);
	}

	/**
	 * 해당 리뷰에 있는 모든 comment select하는 메소드
	 */
	@Override
	public List<ReviewCommentVo> selectReviewCommentListBySerial(int reviewSerial, int page) {
		Map<String,Object> map = new HashMap<>();
		map.put("reviewSerial", reviewSerial);
		map.put("commentPerPage", Constants.ITEMS_PER_PAGE);
		map.put("page", page);
		return session.selectList("reviewComment.selectCommentList", map);
	}
	
	
	/**
	 * 해당 리뷰의 총 댓글 수 count하는 메소드
	 */
	@Override
	public int selectReviewCommentCount(int reviewSerial) {
		return session.selectOne("reviewComment.selectCommentCount",reviewSerial);
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
	public int deleteReviewComment(int commentSerial) {
/*		Map<String,Object> map = new HashMap<>();
		map.put("commentSerial", commentSerial);
		map.put("reviewSerial", reviewSerial);*/
		return session.delete("reviewComment.deleteComment",commentSerial);
	}
	@Override
	public int deleteAllReviewComment(int reviewSerial) {
		return session.delete("reviewComment.deleteAllReviewComment",reviewSerial);
	}
	
	
	
}
