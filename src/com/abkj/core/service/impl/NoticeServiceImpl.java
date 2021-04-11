package com.abkj.core.service.impl;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abkj.common.utils.Page;
import com.abkj.core.dao.NoticeDao;
import com.abkj.core.po.Goods;
import com.abkj.core.po.Notice;
import com.abkj.core.service.NoticeService;
@Service("noticeService")
@Transactional
public  class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDao noticeDao;
	public Page<Notice> findNoticeList(Integer page, Integer rows, 
			String title) {
		Notice notice = new Notice();
		if(StringUtils.isNotBlank(title)){
			notice.setTitle(title);
		}
		notice.setStart((page-1) * rows) ;	
		notice.setRows(rows);
		List<Notice> users = 
				noticeDao.selectNoticeList(notice);
		Integer count = noticeDao.selectNoticeListCount(notice);
		Page<Notice> result = new Page<>();
		result.setPage(page);
		result.setRows(users);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	@Override
	public int createNotice(Notice notice) {
	    return noticeDao.createNotice(notice);
	}
	@Override
	public Notice getNoticeById(Integer id) {	
		Notice notice = noticeDao.getNoticeById(id);
	    return notice;		
	}
	@Override
	public int updateNotice(Notice notice) {
	    return noticeDao.updateNotice(notice);
	}
	@Override
	public int deleteNotice(Integer id) {
	    return noticeDao.deleteNotice(id);	
	}
	
	@Override
	public List<Notice> getNoticeById() {
		// TODO Auto-generated method stub
		return null;
	}
//	@Override
//	public List<Notice> selectNoticeType(Integer id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	@Override
	public Page<Notice> selectNoticeType(Integer page, Integer rows, String title) {
		Notice notice = new Notice();
		if(StringUtils.isNotBlank(title)){
			notice.setTitle(title);
		}
		notice.setStart((page-1) * rows) ;	
		notice.setRows(rows);
		List<Notice> users = 
				noticeDao.selectNoticeList(notice);
		Integer count = noticeDao.selectNoticeListCount(notice);
		Page<Notice> result = new Page<>();
		result.setPage(page);
		result.setRows(users);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	
	
}