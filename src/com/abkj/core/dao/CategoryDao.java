package com.abkj.core.dao;

import java.util.List;

import com.abkj.core.po.Category;


public interface CategoryDao {
public List<Category> selectCategoryList(Category category);
	
	public Integer selectCategoryListCount(Category category);
	//查询
	public Category getCategoryById(Integer cid);
	//添加
	public int insertCategory(Category category);
	//更新
	public int updateCategory(Category category);
	//删除
	int deleteCategory (Integer cid);
}
