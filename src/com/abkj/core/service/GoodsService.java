package com.abkj.core.service;

import java.util.List;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Goods;

public interface GoodsService {
	public Page<Goods> findGoodsList(Integer page, Integer rows, 
			String gname);

	//查询
	public Goods getGoodsById(Integer gid);
	//添加
	public int insertGoods(Goods goods);
	//更新
	public int updateGoods(Goods goods);
	//删除
	public int deleteGoods(Integer gid);

	public Page<Goods> selectGoodsType(Integer page, Integer rows, Integer cid);
	List<Goods> selectGoodsForHot();
}
