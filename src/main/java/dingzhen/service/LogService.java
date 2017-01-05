package dingzhen.service;

import java.util.List;


/**
 *@author: wangq
 *@date: 2015-8-1下午03:22:25
 *@version:
 *@description：
 */
public interface LogService<T> {

	public  void insertLog(T t) throws Exception;
	
	public  List<T> findLog(T t) throws Exception;
	
	public  int countLog(T t) throws Exception;
	
	public  void deleteLog(Integer logId) throws Exception;
	
	public  void truncateLog() throws Exception;
}
