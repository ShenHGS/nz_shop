package com.abkj.core.web.controller;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abkj.common.utils.Page;
import com.abkj.core.po.BaseDict;
import com.abkj.core.po.Customer;
import com.abkj.core.po.User;
import com.abkj.core.service.UserService;
/**
 * 用户控制器类
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	/**
	 * 用户登录
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String usercode,String password, Model model, 
                                                          HttpSession session) {
		// 通过账号和密码查询用户
		User user = userService.findUser(usercode, password);
		if(user != null){		
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", user);
			// 跳转到主页面
//			return "customer";
			return "redirect:customer/list.action";
		}
		model.addAttribute("msg", "账号或密码错误，请重新输入！");
         // 返回到登录页面
		return "login";
	}
	
	/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value = "/toCustomer.action")
	public String toCustomer() {
	    return "customer";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}

	@RequestMapping(value = "/user/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String userName, Model model) {
		// 条件查询所有客户
		Page<User> users = userService.findUserList(page, rows, userName);
		model.addAttribute("page", users);
		model.addAttribute("userName", userName);
		return "user";
	}
	
	/**
	 * 创建客户
	 */
	@RequestMapping("/user/create.action")
	@ResponseBody
	public String userCreate(User user,HttpSession session) {
	    // 获取Session中的当前用户信息
	    User user1 = (User) session.getAttribute("USER_SESSION");

	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = userService.createUser(user);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 通过id获取客户信息
	 */
	@RequestMapping("/user/getUserById.action")
	@ResponseBody
	public User getUserById(Integer id) {
	    User user = userService.getUserById(id);
	    return user;
	}
	/**
	 * 更新客户
	 */
	@RequestMapping("/user/update.action")
	@ResponseBody
	public String userUpdate(User user) {
	    int rows = userService.updateUser(user);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除客户
	 */
	@RequestMapping("/user/delete.action")
	@ResponseBody
	public String userDelete(Integer id) {
	    int rows = userService.deleteUser(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
