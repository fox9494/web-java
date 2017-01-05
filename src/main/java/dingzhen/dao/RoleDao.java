package dingzhen.dao;

import java.util.List;
import java.util.Map;


/**
 *@author: wangq
 *@date: 2015-5-18下午04:53:34
 *@version:
 *@description：
 */
public interface RoleDao<T> {

	public  T findOneRole(Integer roleId) throws Exception;
	
	public  List<T> findRole(T t) throws Exception;
	
	public  int countRole(T t) throws Exception;
	
	public  void deleteRole(Integer roleId) throws Exception;
	
	public  void addRole(T t) throws Exception;
	
	public  void updateRole(T t) throws Exception;
	
	//通过名称判断是否存在，（新增时不能重名）
	public  T existRoleWithRoleName(String roleName) throws Exception;
	
	//批量删除
	public  void deleteRoleByRoleIds(Map map) throws Exception;
}
