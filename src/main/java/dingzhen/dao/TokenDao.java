package dingzhen.dao;

import java.util.Map;

/**
 *@author: wangq
 *@date: 2015-8-15上午09:02:53
 *@version:
 *@description：
 */
public interface TokenDao<T> {
	
	public  void insertToken(T t);
	
	public  T findOneToken(Map map);
	
}
