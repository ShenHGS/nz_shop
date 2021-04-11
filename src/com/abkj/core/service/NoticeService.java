package com.abkj.core.service;

import java.util.List;

import com.abkj.common.utils.Page;
import com.abkj.core.po.Notice;



public interface NoticeService {
	public Page<Notice> findNoticeList(Integer page, Integer rows, 
            String title);
    public int createNotice(Notice notice);
	public Notice getNoticeById(Integer id);
	public int updateNotice(Notice notice);
	public int deleteNotice(Integer n_id);
//	public List<Notice> selectNoticeType(Integer n_id);
	public List<Notice> getNoticeById();	
	public Page<Notice> selectNoticeType(Integer page, Integer rows,String title);
}