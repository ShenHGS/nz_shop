package com.abkj.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.GoodsDao;
import com.abkj.core.po.Goods;
import com.abkj.core.service.GoodsService;

@Service("goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsDao goodsDao;

	public Page<Goods> findGoodsList(Integer page, Integer rows, 
			String gname) {
         Goods goods = new Goods();
         if(StringUtils.isNotBlank(gname)){
        	 goods.setGname(gname);
 		}
		
		// 当前页
		goods.setStart((page-1) * rows) ;
		// 每页数
		goods.setRows(rows);
		// 查询客户列表
		List<Goods> gods = 
                            goodsDao.selectGoodsList(goods);
		// 查询客户列表总记录数
		Integer count = goodsDao.selectGoodsListCount(goods);
		// 创建Page返回对象
		Page<Goods> result = new Page<>();
		result.setPage(page);
		result.setRows(gods);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	@Override
	public int insertGoods(Goods goods) {
		// TODO Auto-generated method stub
		return goodsDao.insertGoods(goods);
	}
	
	@Override
	public int updateGoods(Goods goods) {
	    return goodsDao.updateGoods(goods);
	}
	
	@Override
	public int deleteGoods(Integer gid) {
	    return goodsDao.deleteGoods(gid);
	}
	
	
	@Override
	public Goods getGoodsById(Integer gid) {
	    return goodsDao.getGoodsById(gid);
	}
	
	@Override
	public  List<Goods>selectGoodsForHot(){
		return goodsDao.selectGoodsForHot();
	}
	
	@Override
	public Page<Goods> selectGoodsType(Integer page, Integer rows,Integer cid){
		  Goods goods = new Goods();
	        
			
			// 当前页
			goods.setStart((page-1) * rows) ;
			// 每页数
			goods.setRows(rows);
			
			
			Page<Goods> result = new Page<>();
			if(cid==null) {
				List<Goods> gods= goodsDao.selectGoodsList(goods);
				result.setRows(gods);
			}else {
				goods.setCid(cid);
				List<Goods> gods= goodsDao.selectGoodsType(goods);
				result.setRows(gods);
			}
			 
			Integer count = goodsDao.selectGoodsListCount(goods);
			// 创建Page返回对象
			
			result.setPage(page);
			
			result.setSize(rows);
			result.setTotal(count);
			return result;
	};
}