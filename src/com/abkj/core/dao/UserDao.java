package com.abkj.core.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.abkj.core.po.User;
/**
 * 用户DAO层接口
 */
public interface UserDao {
	/**
	 * 通过账号和密码查询用户
	 */
	public User findUser(@Param("usercode") String usercode,
			                @Param("password") String password);

    // 用户列表
	public List<User> selectUserList(User user);
	// 用户数
	public Integer selectUserListCount(User user);
	
	// 创建用户
	public int createUser(User user);
	// 通过id查询用户
	public User getUserById(Integer id);
	// 更新用户信息
	public int updateUser(User user);
	// 删除用户
	int deleteUser (Integer id);

}
