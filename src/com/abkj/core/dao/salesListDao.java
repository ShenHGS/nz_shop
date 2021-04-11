package com.abkj.core.dao;

import java.util.List;

import com.abkj.core.po.Goods;

public interface salesListDao {

	List<Goods> selectSalesList(Goods good);

	Integer selectSalesListCount(Goods good);

}
