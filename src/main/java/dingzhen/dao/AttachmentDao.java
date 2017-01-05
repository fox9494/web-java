package dingzhen.dao;

import java.util.List;


/**
 *@author: wangq
 *@date: 2015-8-11上午10:04:14
 *@version:
 *@description：
 */
public interface AttachmentDao<T> {

	public  void insertAttachment(T t) throws Exception; 
	
	public  List<T> findAttachment(T t) throws Exception;
	
	public  int countAttachment(T t) throws Exception;
	
}
