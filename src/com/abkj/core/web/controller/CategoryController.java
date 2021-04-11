package com.abkj.core.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Category;
import com.abkj.core.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/category/list.action")
	public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows,
			String cname,Model model) {
		Page<Category> cate = categoryService.findCategoryList(page, rows, cname);
		model.addAttribute("page", cate);
		model.addAttribute("cName", cname);
		return "category";
	}

	@RequestMapping("/category/insert.action")
	@ResponseBody
	public String insertCategory(Category category, HttpSession session) {
		// 获取Session中的当前用户信息
		Category cate = (Category) session.getAttribute("CATEGORY_SESSION");
		// 将当前用户id存储在客户对象中

		// 执行Service层中的创建方法，返回的是受影响的行数
		int rows = categoryService.insertCategory(category);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	// 通过id查询
	@RequestMapping("/category/getCategoryById.action")
	@ResponseBody
	public Category getCategoryById(Integer cid) {
		System.out.println("cid:" + cid);
		Category category = categoryService.getCategoryById(cid);
		return category;
	}

	@RequestMapping("/category/update.action")
	@ResponseBody
	public String categoryUpdate(Integer cid, String cname, Integer pid) {

		Category cate = new Category();
		cate.setCid(cid);
		cate.setCname(cname);

		int rows = categoryService.updateCategory(cate);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	@RequestMapping("/category/delete.action")
	@ResponseBody
	public String categoryDelete(Integer cid) {
		int rows = categoryService.deleteCategory(cid);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}
}
