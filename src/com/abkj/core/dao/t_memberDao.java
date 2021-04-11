package com.abkj.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.abkj.core.po.t_member;

public interface t_memberDao {
	
	public int addVIP(t_member tmember);
	
	public t_member findLoginName(@Param("loginname") String loginname);
	
	
	public t_member findTmember(@Param("loginname") String loginname,
								@Param("loginpwd") String loginpwd);
	
	public int findByUpdate(t_member tmember);
	
	public int updateLoginpwd(t_member tmember);

	public t_member selectTmemberById(Integer id);
	
	public List<t_member> selectT_MemberList(t_member user);
	
	public Integer selectT_MemberListCount(t_member user);

	public int updateUser(t_member user);

	public t_member selectT_MemberById(Integer id);

	public int deleteT_Member(Integer id);
}
