package com.abkj.core.service;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Goods;

public interface salesListService {
	
	Page<Goods> findGoodList(Integer page, Integer rows, String name, String cid);

}
