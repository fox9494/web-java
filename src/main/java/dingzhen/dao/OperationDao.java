package dingzhen.dao;

import java.util.List;


/**
 *@author: wangq
 *@date: 2015-8-6下午05:23:42
 *@version:
 *@description：
 */
public interface OperationDao<T> {

	public  List<T> findOperation(T t) throws Exception;
	
	public  int countOperation(T t) throws Exception;
	
	public  void addOperation(T t) throws Exception;
	
	public  void updateOperation(T t) throws Exception;
	
	public  void deleteOperation(Integer operationId) throws Exception;
	
}
