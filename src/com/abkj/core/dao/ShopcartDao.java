package com.abkj.core.dao;

import java.util.List;

import com.abkj.core.po.Shopcart;


public interface ShopcartDao {
	public List<Shopcart> selectShopcartList(Shopcart spc);
	
	public Integer selectShopcartListCount(Shopcart spc);
	
	//查询
	List<Shopcart> findShopcartGetByMid(Integer mid);
	//添加
	public int insertShopcart(Shopcart spc);
	//更新
	public int updateShopcart(Shopcart spc);
	//删除
	int deleteShopcart (Integer mid);
}
