package com.abkj.core.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abkj.common.utils.Page;
import com.abkj.core.po.t_member;
import com.abkj.core.service.t_memberService;

@Controller
public class t_memberController {
	@Autowired
	private t_memberService memService;
	
	@RequestMapping(value = "t_member/list.action")
	public	String findt_memberList(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String userName, Model model) {
		Page<t_member> t_member = memService.findT_MemberList(page,rows,userName);
		
		System.out.println("controller:"+t_member.toString());
		
		model.addAttribute("page",t_member);
		model.addAttribute("userName",userName);
		
		return "t_member";
		
	}
	@RequestMapping(value = "t_member/getT_MemberById.action")
	@ResponseBody
	public t_member gett_memberById(Integer id) {
		
		t_member user = memService.getT_MemberById(id);
		System.out.println(user);
		return user;
		
	}
	@RequestMapping(value = "t_member/createUser")
	@ResponseBody
	public String createUser(t_member t) {
		
		return null;
	}
	
	@RequestMapping(value = "t_member/update.action")
	@ResponseBody
	public	String userUpdate(Integer mid,String name,String gender,String phone,String email,int vipl) {
		
		
		t_member user = new t_member(); 
		System.out.println(mid);
		System.out.println(name);
		System.out.println(gender);
		System.out.println(phone);
		System.out.println(email);
		System.out.println(vipl);
		user.setMid(mid); 
		user.setName(name);
		user.setGender(gender); 
		user.setPhone(phone); 
		user.setEmail(email);
		user.setVipl(vipl);
		 
		System.out.println(user);
		
		int rows = memService.updateUser(user);

		if(rows>0) {
			return "OK";
		}else {
			return "false";
		}
	}
	@RequestMapping(value = "t_member/delete.action")
	@ResponseBody
	public String userDelete(Integer id) {
		int rows = memService.deleteUser(id);
		if(rows>0) {
			return "OK";
		}else {
			return "false";
		}
	}
}
