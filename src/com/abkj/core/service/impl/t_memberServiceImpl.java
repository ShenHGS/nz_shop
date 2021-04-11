package com.abkj.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.t_memberDao;
import com.abkj.core.po.User;
import com.abkj.core.po.t_member;
import com.abkj.core.service.t_memberService;

@Service("tmemberService")
@Transactional
public class t_memberServiceImpl implements t_memberService {
	@Autowired
	private t_memberDao tpmember;
	
	@Override
	public int addVIP(t_member tmember) {
		// TODO Auto-generated method stub
		return tpmember.addVIP(tmember);
	}
	
	@Override
	public t_member findLoginName(String loginname) {
		t_member tmember = this.tpmember.findLoginName(loginname);
		return tmember;
		
	}
	
	
	@Override
	public t_member findTmember(String loginname,String loginpwd) {
		t_member tmember = this.tpmember.findTmember(loginname, loginpwd);
		return tmember;
		
	}
	
	@Override
	public int findByUpdate(t_member tmember) {
	    return tpmember.findByUpdate(tmember);
	}
	
	@Override
	public int updateLoginpwd(t_member tmember) {
		return tpmember.updateLoginpwd(tmember);
	}

	@Override
	public t_member findTmemberById(Integer id) {
		// TODO Auto-generated method stub
		return tpmember.selectTmemberById(id);
	}
	
	
	
	
	
	
	
	
	
	
	@Override
	public Page<t_member> findT_MemberList(Integer page,Integer rows,String name) {
		// TODO Auto-generated method stub
		t_member user = new t_member();
		if(StringUtils.isNoneBlank(name)) {
			user.setName(name);
		}
		
		// 当前页
		user.setStart((page-1) * rows) ;
		// 每页数
		user.setRows(rows);
		
		List<t_member> lists = tpmember.selectT_MemberList(user);
		//
		System.out.println("Service:"+lists.toString());
		
		Integer count = tpmember.selectT_MemberListCount(user);
		System.out.println("count:"+count);
		
		
		
		Page<t_member> result = new Page<>();
		result.setPage(page);
		result.setRows(lists);
		result.setSize(rows);
		result.setTotal(count);
		
		return result;
	}

	@Override
	public int updateUser(t_member user) {
		// TODO Auto-generated method stub
		int rows = tpmember.updateUser(user);
		
		return rows;
	}

	@Override
	public t_member getT_MemberById(Integer id) {
		// TODO Auto-generated method stub
		return tpmember.selectT_MemberById(id);
	}

	@Override
	public int deleteUser(Integer id) {
		// TODO Auto-generated method stub
		return tpmember.deleteT_Member(id);
	}

}
