package dingzhen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dingzhen.dao.LogDao;
import dingzhen.service.LogService;

/**
 *@author: wangq
 *@date: 2015-8-1下午03:22:48
 *@version:
 *@description：
 */
@Service("logService")
public class LogServiceImpl<T> implements LogService<T>{

	@Autowired
	private LogDao<T> dao ;
	
	
	public int countLog(T t) throws Exception {
		return dao.countLog(t);
	}
	
	public List<T> findLog(T t) throws Exception {
		return dao.findLog(t);
	}
	public void insertLog(T t) throws Exception {
		dao.insertLog(t);
	}

	public void deleteLog(Integer logId) throws Exception {
		dao.deleteLog(logId);
	}

	public void truncateLog() throws Exception {
		dao.truncateLog();
	}
	
	

}
