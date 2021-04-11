package com.abkj.core.service;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Category;

public interface CategoryService {
	public Page<Category> findCategoryList(Integer page, Integer rows, 
			String cname);

	//查询
	public Category getCategoryById(int cid);
	//添加
	public int insertCategory(Category category);
	//更新
	public int updateCategory(Category category);
	//删除
	public int deleteCategory(Integer cid);
}
