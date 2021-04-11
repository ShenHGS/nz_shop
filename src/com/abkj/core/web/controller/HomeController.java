package com.abkj.core.web.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.abkj.common.utils.Page;
import com.abkj.core.po.Goods;
import com.abkj.core.po.Notice;
import com.abkj.core.po.t_member;
import com.abkj.core.service.GoodsService;
import com.abkj.core.service.NoticeService;
import com.abkj.core.service.t_memberService;
import com.abkj.core.po.Goods;


@Controller
public class HomeController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private t_memberService tbService;
	@Autowired
	private NoticeService noticeService;
	
	/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value = "/toHome.action")
	public String toHome() {
	    return "/home";
	}
	
	//主页
	@RequestMapping(value = "/home/index.action")
	public String index(Model model) {		
		List<Goods> list_hot=goodsService.selectGoodsForHot();		
		
		model.addAttribute("list_hot", list_hot);						
	    return "../../home";
	}
	
	

	//商品列表页和详情页
			@RequestMapping("/home/getGoodsById.action")		
			public String getGoodsById(Integer gid, Model model) {
			    Goods list_goods = goodsService.getGoodsById(gid);
			    model.addAttribute("list_goods", list_goods);	
			    return "../../details";
			}
			
			
			@RequestMapping("/home/selectGoodsType.action")
			public String selectGoodsType(@RequestParam(defaultValue = "1") Integer page,
					@RequestParam(defaultValue = "10") Integer rows, Integer gid, Integer cid, String price, String inprice,
					String pic, Model model) {
				Page<Goods> goodType = goodsService.selectGoodsType(page, rows, cid);
				model.addAttribute("page", goodType);
				model.addAttribute("cid", cid);
				return "../../hgood";
			}
			
			
			
			
			
			
			/**
			 * 用户注册
			 * @throws ParseException 
			 */

			 @RequestMapping(value="/home/addVIP.action")
			 public String addUser(String name,String gender,String phone,String email,
					 			   String loginname,String loginpwd,String salt,String
					 			   consignee,String address,Model model) throws ParseException  {
				 Date date = new Date();//获得系统时间.
				 SimpleDateFormat sdf =   new SimpleDateFormat( " yyyy-MM-dd HH:mm:ss " );
				 String nowTime = sdf.format(date);
				 Date time = sdf.parse( nowTime );
				 
				 t_member tmember = new t_member();
				 
				 tmember.setName(name);
				 tmember.setGender(gender);
				 tmember.setPhone(phone);
				 tmember.setEmail(email);
				 tmember.setLoginname(loginname);	 
				 	t_member f = tbService.findLoginName(loginname);
				 	if(f != null) {
				 		model.addAttribute("msg","登录账号已经被占用请重新输入");
				 		return "addVIP";
				 	}else {
				 tmember.setLoginpwd(loginpwd);
				 tmember.setConsignee(consignee);
				 tmember.setSalt(salt);
				 tmember.setReg_time(time);
				 tmember.setAddress(address);
				 tmember.setVipl(0);
				 tbService.addVIP(tmember);
				 model.addAttribute("vlogin",tmember);
				return "vlogin";  	
				 	}
			    }
			 
			 	/**
				 * 用户登录
				 * @throws ParseException 
				 */
			 @RequestMapping(value="/home/vlogin.action")
			 public String findTmember(String loginname,String loginpwd, Model model,
					 				String checkCode,HttpSession session) {
				 t_member tmember = tbService.findTmember(loginname, loginpwd);
				 		if(tmember != null) {
				 			session.setAttribute("TMEMBER_SESSION", tmember);
				 			String check = (String) session.getAttribute("randCheckCode");
				 			if(checkCode.equals(check)) {
				 				return "success";
				 			}
				 			else
				 			{
				 			System.out.println("1"+check);
			 				System.out.println("2"+checkCode);
			 				model.addAttribute("msg","验证码输入错误");
			 				return "vlogin";
				 			}
				 		}
				 		model.addAttribute("msg","账户或者密码输入有误");
				 		return "vlogin";
			 }
			 	/**
				 * 修改用户信息
				 * @throws ParseException 
				 */
			 @RequestMapping(value="/home/updateVIP.action")
			 public String Update(String loginname,String name,String gender,String phone,String email,
					 			  String salt,String consignee,String address,Model model,HttpSession session) {
				 t_member tmember = new t_member();
				 tmember.setLoginname(loginname);
				 
				 tmember.setName(name);
				 tmember.setGender(gender);
				 tmember.setPhone(phone);
				 tmember.setEmail(email);
				 tmember.setLoginname(tmember.getLoginname());
				 tmember.setSalt(salt);
				 tmember.setConsignee(consignee);
				 tmember.setAddress(address);
				 session.setAttribute("TMEMBER_SESSION", tmember);
				 tbService.findByUpdate(tmember);
				 model.addAttribute("success",tmember);
				return "success";
				 
			 }
			 
			 /**
				 * 修改用户密码
				 * @throws ParseException 
				 */
			 @RequestMapping(value="/home/updateLoginpwd.action")
			 public String updatepwd(String loginname,String loginpwd,Model model) {
				 t_member tmember = new t_member();
				 tmember.setLoginname(loginname);
				 tmember.setLoginpwd(loginpwd);
				 
				 tbService.updateLoginpwd(tmember);
				 model.addAttribute("vlogin",tmember);
				return "vlogin";
				 
			 }
			 @RequestMapping(value = "/home/getT_memberById.action")
			 @ResponseBody
			 public t_member getT_memberById(Integer id,Model model) {
				 t_member tmember =  tbService.findTmemberById(id);
				 return tmember;
			 }
			 
			 /**
				 * 跳转到会员中心
				 * @throws ParseException 
				 */
			 @RequestMapping(value = "/home/gotoSuccess.action")
				public String success(HttpSession session) {	
				 t_member tmember = (t_member) session.getAttribute("TMEMBER_SESSION");
					if(tmember == null){
						return "vlogin";
					} 
				    return "success";
				}
			 @RequestMapping("/notices/selectNoticeType.action")
				public String selectNoticeType(@RequestParam(defaultValue = "1") Integer page,
						@RequestParam(defaultValue = "10") Integer rows, Integer n_id, String title, String details,
						String n_time, Model model) {
					Page<Notice> users = noticeService.selectNoticeType(page, rows,title);
					model.addAttribute("page", users);				
					return "notices";
				}
			 
}
