package com.abkj.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.salesListDao;

import com.abkj.core.po.Goods;
import com.abkj.core.service.salesListService;
@Service
public class salesListServiceImpl implements salesListService {
	@Autowired
	private salesListDao salesDao;
	@Override
	public Page<Goods> findGoodList(Integer page, Integer rows, String name, String cid) {
		// TODO Auto-generated method stub
		
		Goods good = new Goods();
		System.out.println("cid:"+cid);
		System.out.println("goodsCid:"+good.getCid());
		if(cid != null) {
			
		int commodity = Integer.parseInt(cid);
			System.out.println("commodity:"+commodity);
			good.setCid(commodity);
		}
		
		if(StringUtils.isNotBlank(name)) {
			good.setGname(name);
		}
		
		good.setStart((page-1) * rows) ;
		// 每页数
		good.setRows(rows);
		
		List<Goods> list = salesDao.selectSalesList(good);
		System.out.println("salseListImpl:"+list.toString());
		
		Integer count = salesDao.selectSalesListCount(good);
		
		
		
		// 创建Page返回对象
		Page<Goods> result = new Page<>();
		result.setPage(page);
		result.setRows(list);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

	
	
}
