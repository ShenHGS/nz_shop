package com.abkj.core.service.impl;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.UserDao;
import com.abkj.core.po.User;
import com.abkj.core.service.UserService;
/**
 * 用户Service接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	// 注入UserDao
	@Autowired
	private UserDao userDao;
	// 通过账号和密码查询用户
	@Override
	public User findUser(String usercode, String password) {
		User user = this.userDao.findUser(usercode, password);
		return user;
	}
	// 用户列表
	public Page<User> findUserList(Integer page, Integer rows, 
			String userName) {
		// 创建用户对象
		User user = new User();
		// 判断用户名称
		if(StringUtils.isNotBlank(userName)){
			user.setUser_name(userName);
		}
		// 当前页
		user.setStart((page-1) * rows) ;
		// 每页数
		user.setRows(rows);
		// 查询用户列表
		List<User> users = 
                            userDao.selectUserList(user);
		// 查询用户列表总记录数
		Integer count = userDao.selectUserListCount(user);
		// 创建Page返回对象
		Page<User> result = new Page<>();
		result.setPage(page);
		result.setRows(users);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建客户
	 */
	@Override
	public int createUser(User user) {
	    return userDao.createUser(user);
	}
	/**
	 * 通过id查询客户
	 */
	@Override
	public User getUserById(Integer id) {	
		User user = userDao.getUserById(id);
	    return user;		
	}
	/**
	 * 更新客户
	 */
	@Override
	public int updateUser(User user) {
	    return userDao.updateUser(user);
	}
	/**
	 * 删除客户
	 */
	@Override
	public int deleteUser(Integer id) {
	    return userDao.deleteUser(id);	
	}

}
