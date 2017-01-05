package dingzhen.dao;

import java.util.List;



/**
 *@author: wangq
 *@date: 2015-8-1下午03:21:33
 *@version:
 *@description：
 */
public interface LogDao<T> {
	
	// 操作记录的插入方法，因为在aop中拦截的是以add开头的方法，但是此操作不需要拦截，所以用insert开头名字的方法
	public  void insertLog(T t) throws Exception;  
	
	public  List<T> findLog(T t) throws Exception;
	
	public  int countLog(T t) throws Exception;
	
	public  void deleteLog(Integer logId) throws Exception;
	
	public  void truncateLog() throws Exception;
	
}
