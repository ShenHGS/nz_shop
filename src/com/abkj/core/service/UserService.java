package com.abkj.core.service;
import com.abkj.common.utils.Page;

import com.abkj.core.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	// 通过账号和密码查询用户
	public User findUser(String usercode,String password);
	// 查询客户列表
	public Page<User> findUserList(Integer page, Integer rows, 
                                        String userName);
	
	public int createUser(User user);
	
	// 通过id查询客户
	public User getUserById(Integer id);
	// 更新客户
	public int updateUser(User user);
	// 删除客户
	public int deleteUser(Integer id);
}
