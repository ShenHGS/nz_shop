package com.abkj.core.web.controller;
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
import com.abkj.core.po.Orders;
import com.abkj.core.po.t_member;
import com.abkj.core.service.NoticeService;
@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	/**
	 * 创建公告
	 */
	@RequestMapping(value = "/notice/list.action")  
	
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String title,String details,String n_time, Model model) {
		Page<Notice> users = noticeService.findNoticeList(page, rows, title);
		model.addAttribute("page", users);
		model.addAttribute("title", title);
		return "notice";
	}
	@RequestMapping("/notice/create.action")
	@ResponseBody
	public String noticeCreate(Notice notice,HttpSession session) {				
	    int rows = noticeService.createNotice(notice);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}
	@RequestMapping("/notice/getNoticeById.action")
	@ResponseBody
	public Notice getNoticeById(Integer id) {
		Notice notice = noticeService.getNoticeById(id);
	    return notice;
	}
	@RequestMapping("/notice/update.action")
	@ResponseBody
	public String noticeUpdate(Notice notice) {
	    int rows = noticeService.updateNotice(notice);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}
	@RequestMapping("/notice/delete.action")
	@ResponseBody
	public String noticeDelete(Integer id) {
	    int rows = noticeService.deleteNotice(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}
}