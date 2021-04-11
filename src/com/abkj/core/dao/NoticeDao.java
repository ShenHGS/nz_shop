package com.abkj.core.dao;

import java.util.List;

import com.abkj.core.po.Notice;


public interface NoticeDao {
	public List<Notice> selectNoticeList(Notice notice);
	
	public Integer selectNoticeListCount(Notice notice);

		public int createNotice(Notice notice);
	
		public Notice getNoticeById(Integer id);
	
		public int updateNotice(Notice notice);
	
		int deleteNotice (Integer id);
}
