package com.abkj.core.service;

import com.abkj.common.utils.Page;
import com.abkj.core.po.t_member;

public interface t_memberService {
	//注册账号
	 int addVIP(t_member tmember);
	 
	//登录账号
	 t_member findTmember(String loginname,String loginpwd);

	int findByUpdate(t_member tmember);

	int updateLoginpwd(t_member tmember);

	t_member findLoginName(String loginname);

	t_member findTmemberById(Integer id);
	
	public Page<t_member> findT_MemberList(Integer page,Integer rows,String name);

	public int updateUser(t_member user);

	public t_member getT_MemberById(Integer id);

	public int deleteUser(Integer id);

}
