package com.abkj.core.dao;

import java.util.List;
import com.abkj.core.po.Orders;
public interface OrdersDao {
public List<Orders> selectOrdersList(Orders t_order);
	
	public Integer selectOrdersListCount(Orders t_order);
	
	public int insertOrders(Orders orders);
	
	public List<Orders> getOrdersByMId(Integer id);
	int deleteOrders (Integer oid);

}
