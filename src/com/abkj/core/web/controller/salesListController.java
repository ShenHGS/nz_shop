package com.abkj.core.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Goods;
import com.abkj.core.service.salesListService;
import com.abkj.core.service.t_categoryService;
import com.abkj.core.po.t_category;
@Controller
public class salesListController {
	@Autowired
	private salesListService salesList;
	@Autowired
	private t_categoryService t_category;
	
	@RequestMapping(value="salesList/list.action")
	public String getSalesList(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String name,String cid, Model model) {
		
		 
		
		Page<Goods> goods = salesList.findGoodList(page, rows,name,cid);
		
		
		List<t_category> CommodityType = t_category.findT_categoryList();
		
		System.out.println("CommodityType"+CommodityType.toString());
		
		model.addAttribute("page",goods);
		model.addAttribute("CommodityType",CommodityType);
		
		
		System.out.println("name:"+name);
		
		return "salesList";
	}
	
	
}
