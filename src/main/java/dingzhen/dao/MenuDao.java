package dingzhen.dao;

import java.util.List;
import java.util.Map;


/**
 *@author: wangq
 *@date: 2015-5-18下午04:31:26
 *@version:
 *@description：
 */
public interface MenuDao<T> {
	
	public  List<T> findMenu(T t) throws Exception;
	
	public  int countMenu(T t) throws Exception;
	
	public  void addMenu(T t) throws Exception;
	
	public  void updateMenu(T t) throws Exception;
	
	public  void deleteMenu(Integer menuId) throws Exception;
	
	public  List<T> menuTree(Map map) throws Exception;
	
}
