package dingzhen.service;

import java.util.List;
import java.util.Map;


/**
 *@author: wangq
 *@date: 2015-5-18下午04:32:47
 *@version:
 *@description：
 */
public interface MenuService<T> {

	public  List<T> findMenu(T t) throws Exception;
	
	public  int countMenu(T t) throws Exception;
	
	public  void addMenu(T t) throws Exception;
	
	public  void updateMenu(T t) throws Exception;
	
	public  void deleteMenu(Integer menuId) throws Exception;
	
	@SuppressWarnings("unchecked")
	public  List<T> menuTree(Map map) throws Exception;
}
