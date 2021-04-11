package com.abkj.core.web.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.abkj.common.utils.Page;
import com.abkj.core.po.Orders;
import com.abkj.core.po.Shopcart;
import com.abkj.core.po.t_member;
import com.abkj.core.service.OrdersService;
import com.abkj.core.service.ShopcartService;


@Controller
public class OrdersController {
	@Autowired
	private OrdersService ordersservice;
	@Autowired
	private ShopcartService shopcartService;
	
    @RequestMapping(value = "/orders/list.action")  	
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String consignee, Model model) {
		Page<Orders> os = ordersservice.findOrdersList(page, rows, consignee);
		model.addAttribute("page", os);
		model.addAttribute("consignee", consignee);
		return "orders";
	}
    
    //前台订单页面
    @RequestMapping(value = "/order/action.action")
	public String action(HttpSession session,HttpServletRequest request,Model model) {
		t_member tmember = (t_member) session.getAttribute("TMEMBER_SESSION");
		if(tmember == null){
			return "vlogin";
    	} 
		String addrname= null;
		String myphone= null;
		String myaddres= null;
		String radio=request.getParameter("addr");
		System.out.println(radio);
		if(radio.equals("2")){
			addrname=request.getParameter("inboxname");
			myphone=request.getParameter("inboxtel");
			myaddres=request.getParameter("inboxaddr");
			System.out.println(addrname);
			System.out.println(myphone);
			System.out.println(myaddres);
		} else {
			addrname= tmember.getConsignee();
			myphone= tmember.getPhone();
			myaddres= tmember.getAddress();
			System.out.println(addrname);
			System.out.println(myphone);
			System.out.println(myaddres);
		}
		List<Shopcart> spc = shopcartService.findShopcartGetByMid(tmember.getMid());
		int amount =0;
		System.out.println(spc.size());
		for(int i=0;i<spc.size();i++){
			amount = amount+spc.get(i).getNum();
			System.out.println(spc.get(i).getNum());
		}
		System.out.println(amount);
		Orders orders =new Orders();
		orders.setMid(tmember.getMid());
		Date time= new java.sql.Date(new java.util.Date().getTime());
		orders.setCreate_time(time);
		orders.setConsignee(addrname);
		orders.setAddress(myaddres);
		orders.setPhone(myphone);
		orders.setIs_payed(1);
		orders.setPayid(1);
		orders.setAmount(amount);
		ordersservice.insertOrders(orders);
		System.out.println();
		List<Orders> orderList = ordersservice.getOrdersByMId(tmember.getMid());
		int rows = shopcartService.deleteShopcart(tmember.getMid());
		model.addAttribute("orders",orderList);
		return "order";
	}
    @RequestMapping(value = "/order/selectOrders.action")
  	public String selectOrders(HttpSession session,Model model) {
    	t_member tmember = (t_member) session.getAttribute("TMEMBER_SESSION");
		if(tmember == null){
			return "vlogin";
    	} 
    	List<Orders> orderList = ordersservice.getOrdersByMId(tmember.getMid());
		model.addAttribute("orders",orderList);
		return "order";
    }

    
//@RequestMapping("/orders/getOrdersById.action")
//@ResponseBody
//public Orders getOrdersById(Integer id) {
//	Orders orders = ordersservice.getOrdersById(id);
//    return orders;
//}
@RequestMapping("/orders/delete.action")
@ResponseBody
public String ordersDelete(Integer oid) {
    int rows = ordersservice.deleteOrders(oid);
  if(rows > 0){			
       return "OK";
    }else{
       return "FAIL";			
   }
}
}
