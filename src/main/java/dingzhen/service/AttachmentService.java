package dingzhen.service;

import java.util.List;

/**
 *@author: wangq
 *@date: 2015-8-11上午10:05:29
 *@version:
 *@description：
 */
public interface AttachmentService<T> {
	
	public  void insertAttachment(T t) throws Exception;
	
	public  List<T> findAttachment(T t) throws Exception;
	
	public  int countAttachment(T t) throws Exception;
	
}
