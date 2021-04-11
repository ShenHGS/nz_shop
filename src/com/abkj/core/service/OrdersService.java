package com.abkj.core.service;

import java.util.List;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Orders;

public interface OrdersService {
	public Page<Orders> findOrdersList(Integer page, Integer rows, 
            String consignee);
	
	public int insertOrders(Orders orders);
	
	public List<Orders> getOrdersByMId(Integer id);
	public int deleteOrders(Integer oid);
}
