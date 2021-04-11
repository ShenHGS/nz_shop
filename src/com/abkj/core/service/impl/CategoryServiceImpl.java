package com.abkj.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.CategoryDao;
import com.abkj.core.po.Category;
import com.abkj.core.service.CategoryService;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;

	public Page<Category> findCategoryList(Integer page, Integer rows, 
			String cname) {
         Category category = new Category();
         if(StringUtils.isNotBlank(cname)){
        	 category.setCname(cname);
 		}
		
		// 当前页
		category.setStart((page-1) * rows) ;
		// 每页数
		category.setRows(rows);
		// 查询客户列表
		List<Category> cate = 
                            categoryDao.selectCategoryList(category);
		// 查询客户列表总记录数
		Integer count = categoryDao.selectCategoryListCount(category);
		// 创建Page返回对象
		Page<Category> result = new Page<>();
		result.setPage(page);
		result.setRows(cate);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	@Override
	public int insertCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryDao.insertCategory(category);
	}
	
	@Override
	public int updateCategory(Category category) {
	    return categoryDao.updateCategory(category);
	}
	
	@Override
	public int deleteCategory(Integer cid) {
	    return categoryDao.deleteCategory(cid);
	}
	
	
	@Override
	public Category getCategoryById(int cid) {
		Category category = categoryDao.getCategoryById(cid);
	    return category;
	}
}