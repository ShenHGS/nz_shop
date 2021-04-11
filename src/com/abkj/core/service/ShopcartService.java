package com.abkj.core.service;

import java.util.List;

import com.abkj.common.utils.Page;

import com.abkj.core.po.Shopcart;

public interface ShopcartService {
	public Page<Shopcart> findShopcartList(Integer page,Integer rows,String price);
	
	//查询
	List<Shopcart> findShopcartGetByMid(Integer mid);
	//添加
	public int insertShopcart(Shopcart spc);
	//更新
	public int updateShopcart(Shopcart spc);
	//删除
	int deleteShopcart (Integer mid);
}
