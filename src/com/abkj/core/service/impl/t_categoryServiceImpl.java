package com.abkj.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abkj.core.dao.t_categoryDao;
import com.abkj.core.po.t_category;
import com.abkj.core.service.t_categoryService;
@Service
public class t_categoryServiceImpl implements t_categoryService {
	@Autowired
	private t_categoryDao t_categoryDao;

	@Override
	public List<t_category> findT_categoryList() {
		// TODO Auto-generated method stub
		
		return t_categoryDao.selectT_categoryList();
	}
	
	
}
