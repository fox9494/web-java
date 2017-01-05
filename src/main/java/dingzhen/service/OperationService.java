package dingzhen.service;

import java.util.List;

/**
 *@author: wangq
 *@date: 2015-8-7上午09:01:02
 *@version:
 *@description：
 */
public interface OperationService<T> {

	public  List<T> findOperation(T t) throws Exception;
	
	public  int countOperation(T t) throws Exception;
	
	public  void addOperation(T t) throws Exception;
	
	public  void updateOperation(T t) throws Exception;
	
	public  void deleteOperation(Integer operationId) throws Exception;
	
}