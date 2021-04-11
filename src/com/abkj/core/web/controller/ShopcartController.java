package com.abkj.core.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Goods;
import com.abkj.core.po.Shopcart;
import com.abkj.core.po.t_member;
import com.abkj.core.service.ShopcartService;
import com.abkj.core.service.GoodsService;

@Controller
public class ShopcartController {
	@Autowired
	private ShopcartService shopcartService;
	@Autowired
	private GoodsService goodsServiec;
	
	//后端购物车页面
	@RequestMapping(value = "/buycar/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String add_time,
			String price,Model model) {
		Page<Shopcart> spc = shopcartService
				.findShopcartList(page,rows,price);
		model.addAttribute("page", spc);
		return "buycar";
	}
	
	//从商品详情页调用数据到购物车页面
	@RequestMapping("/tbCar/selectGid.action")
	public String findShopcartGetByGid(Model model,HttpServletRequest request,HttpSession session) {
				t_member tmember = (t_member) session.getAttribute("TMEMBER_SESSION");
				if(tmember == null){
					return "vlogin";
				} 
				System.out.println(tmember.toString());
		Cookie[] cookies = request.getCookies();
		String num ="";
		String gids ="";
		String inprices = "";
		for (Cookie cookie : cookies) {
			switch(cookie.getName()){
			case "num":
				num = cookie.getValue();
				break;
			case "gid":
				gids = cookie.getValue();
				break;
			case "inprice":
				inprices = cookie.getValue();
				break;
			default:
				break;
			}
		}
		int gid =(int)Integer.parseInt(gids);
		float inprice = (float)Float.parseFloat(inprices);
		int nums =(int)Integer.parseInt(num);
		System.out.println("num的值是"+nums);
		System.out.println("gid的值是"+gid);
		float amounts = inprice *nums;
		String amount =String.valueOf(amounts);
		String price =String.valueOf(inprice);
		System.out.println("price的值是"+price);
		Shopcart shopcart = new Shopcart();
		shopcart.setMid(tmember.getMid());
		shopcart.setNum(nums);
		shopcart.setPrice(price);
		shopcart.setGid(gid);
		shopcart.setAmount(amount);
		Date time= new java.sql.Date(new java.util.Date().getTime());
		shopcart.setAdd_time(time);
		shopcartService.insertShopcart(shopcart);
		return gototbCar(session, model);
	}
	
	//从主页调用数据到购物车
	@RequestMapping("/tbCar/gototbCar.action")
	public String gototbCar(HttpSession session,Model model) {
		t_member tmember = (t_member) session.getAttribute("TMEMBER_SESSION");
		if(tmember == null){
			return "vlogin";
		} 
		List<Shopcart> spc = shopcartService.findShopcartGetByMid(tmember.getMid());
		if(spc.size()==0){
			return "notbCar";
		}
		Goods goods = new Goods();
		List<Goods> gods = new ArrayList<Goods>();
		for(int i=0;i<spc.size();i++){
			System.out.println(spc.get(i).getGid()+i);
			goods =goodsServiec.getGoodsById(spc.get(i).getGid());
			gods.add(goods);
		}
		model.addAttribute("Shopcart",spc);
		model.addAttribute("goods", gods);
		return "tbCar";
	}
	
	//清空购物车
	@RequestMapping("/tbCar/delete.action")
	public String deleteShopcart(Integer mid,HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		String mids ="";
		for (Cookie cookie : cookies) {
		    switch(cookie.getName()){
		        case "mid":
		        	mids = cookie.getValue();
		            break;
		        default:
		            break;
		    }
		    
		}
		mid =(int)Integer.parseInt(mids);
		System.out.println(mid);
	    int rows = shopcartService.deleteShopcart(mid);
	    return "notbCar";
	}
	
}
