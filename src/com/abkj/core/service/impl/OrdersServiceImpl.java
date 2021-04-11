package com.abkj.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.OrdersDao;
import com.abkj.core.po.Orders;
import com.abkj.core.service.OrdersService;

@Service("ordersService")
@Transactional
public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersDao ordersdao;
	public Page<Orders> findOrdersList(Integer page, Integer rows, 
			String consignee) {
		Orders orders = new Orders();
		if(StringUtils.isNotBlank(consignee)){
			orders.setConsignee(consignee);
		}
		orders.setStart((page-1) * rows) ;	
		orders.setRows(rows);
		List<Orders> os = 
				ordersdao.selectOrdersList(orders);
		Integer count = ordersdao.selectOrdersListCount(orders);
		Page<Orders> result = new Page<>();
		result.setPage(page);
		result.setRows(os);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	@Override
	public List<Orders> getOrdersByMId(Integer id) {
		
	    return ordersdao.getOrdersByMId(id);
	}
	@Override
	public int deleteOrders(Integer oid) {
		return ordersdao.deleteOrders(oid);
	}
	@Override
	public int insertOrders(Orders orders) {
		return ordersdao.insertOrders(orders);
	}
	
}
