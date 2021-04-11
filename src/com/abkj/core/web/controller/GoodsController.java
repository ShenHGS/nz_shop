package com.abkj.core.web.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Goods;
import com.abkj.core.service.GoodsService;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService goodsService;

	@RequestMapping(value = "/goods/list.action")
	public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows,
			String gname, String price, String inprice, String description, String identifier, String inTime,
			Model model) {
		Page<Goods> gods = goodsService.findGoodsList(page, rows, gname);
		model.addAttribute("page", gods);
		model.addAttribute("gName", gname);
		return "goods";
	}

	@RequestMapping("/goods/insert.action")
	@ResponseBody
	public String insertGoods(Goods goods, HttpSession session) {
		Goods gods = (Goods) session.getAttribute("GOODS_SESSION");
		int rows = goodsService.insertGoods(goods);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	// 通过id查询
	@RequestMapping("/goods/getGoodsById.action")
	@ResponseBody
	public Goods getGoodsById(Integer gid) {
		Goods goods = goodsService.getGoodsById(gid);
		return goods;
	}

	@RequestMapping("/goods/update.action")
	@ResponseBody
	public String goodsUpdate(Integer gid, String gname, String price, String inprice, String description,
			Integer status, Integer stock, String identifier, Integer hits,Date inTime) {

		Goods god = new Goods();
		god.setGid(gid);
		god.setGname(gname);
		god.setPrice(price);
		god.setInprice(inprice);
		god.setDescription(description);
		god.setStatus(status);
		god.setStock(stock);
		god.setIdentifier(identifier);
		god.setInTime(inTime);
		god.setHits(hits);

		int rows = goodsService.updateGoods(god);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	@RequestMapping("/goods/delete.action")
	@ResponseBody
	public String goodsDelete(Integer gid) {
		int rows = goodsService.deleteGoods(gid);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}
}
