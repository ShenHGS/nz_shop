package com.abkj.core.dao;

import java.util.List;

import com.abkj.core.po.Goods;

public interface GoodsDao {
	
	 List<Goods> selectGoodsForHot();
	 List<Goods> selectGoodsType(Goods goods);
	
	public List<Goods> selectGoodsList(Goods goods);
	
	public Integer selectGoodsListCount(Goods goods);
	//查询
	public Goods getGoodsById(Integer gid);
	//添加
	public int insertGoods(Goods goods);
	//更新
	public int updateGoods(Goods goods);
	//删除
	int deleteGoods (Integer gid);
} 
