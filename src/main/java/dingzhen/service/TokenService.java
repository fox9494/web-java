package dingzhen.service;

import java.util.Map;

/**
 *@author: wangq
 *@date: 2015-8-15上午09:03:39
 *@version:
 *@description：
 */
public interface TokenService<T> {

	public  void insertToken(T t);
	
	@SuppressWarnings("unchecked")
	public  T findOneToken(Map map);
	
}
