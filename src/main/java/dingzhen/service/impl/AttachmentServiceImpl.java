package dingzhen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dingzhen.dao.AttachmentDao;
import dingzhen.service.AttachmentService;

/**
 *@author: wangq
 *@date: 2015-8-11上午10:06:31
 *@version:
 *@description：
 */
@Service("attachmentService")
public class AttachmentServiceImpl<T> implements AttachmentService<T>{

	@Autowired
	private AttachmentDao<T> dao;
	
	
	public void insertAttachment(T t) throws Exception {
		dao.insertAttachment(t);
	}

	public int countAttachment(T t) throws Exception {
		return dao.countAttachment(t);
	}

	public List<T> findAttachment(T t) throws Exception {
		return dao.findAttachment(t);
	}

}
