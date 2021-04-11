package com.abkj.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.ShopcartDao;
import com.abkj.core.po.Shopcart;
import com.abkj.core.service.ShopcartService;
@Service("shopcartService")
@Transactional
public class ShopcartServiceImpl implements ShopcartService {
	@Autowired
	private ShopcartDao spcdao;	
	
	@Override
	public Page<Shopcart> findShopcartList(Integer page,Integer rows,
			String price) {
		Shopcart spc = new Shopcart();
		// 当前页
		spc.setStart((page-1) * rows) ;
		// 每页数
		spc.setRows(rows);
		spc.setPrice(price);
		// 查询购物车列表
		System.out.println("shopcart:"+spc);
		System.out.println("service："+spc.toString());
		List<Shopcart> spclist = 
				spcdao.selectShopcartList(spc);
		
		
		// 查询客户列表总记录数
		Integer count = spcdao.selectShopcartListCount(spc);
		// 创建Page返回对象
		Page<Shopcart> result = new Page<>();
		result.setPage(page);
		result.setRows(spclist);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

	@Override
	public List<Shopcart> findShopcartGetByMid(Integer mid) {
		// TODO Auto-generated method stub
		return spcdao.findShopcartGetByMid(mid);
	}

	@Override
	public int insertShopcart(Shopcart spc) {
		// TODO Auto-generated method stub
		return spcdao.insertShopcart(spc);
	}

	@Override
	public int updateShopcart(Shopcart spc) {
		// TODO Auto-generated method stub
		return spcdao.updateShopcart(spc);
	}

	@Override
	public int deleteShopcart(Integer mid) {
		// TODO Auto-generated method stub
		return spcdao.deleteShopcart(mid);
	}

}
