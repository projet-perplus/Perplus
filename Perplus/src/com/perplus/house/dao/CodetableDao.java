package com.perplus.house.dao;

import java.util.List;

import com.perplus.house.vo.CodetableVo;

public interface CodetableDao {
	
	List<CodetableVo> codetableFindByKind(int codeKind);
	
}
