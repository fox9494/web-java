package dingzhen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dingzhen.dao.OperationDao;
import dingzhen.service.OperationService;

/**
 *@author: wangq
 *@date: 2015-8-7上午09:01:44
 *@version:
 *@description：
 */
@Service("operationService")
public class OperationServiceImpl<T> implements OperationService<T>{
	
	@Autowired
	private OperationDao<T> dao;
	

	public void addOperation(T t) throws Exception {
		dao.addOperation(t);
	}

	public int countOperation(T t) throws Exception {
		return dao.countOperation(t);
	}

	public void deleteOperation(Integer operationId) throws Exception {
		dao.deleteOperation(operationId);
	}

	public List<T> findOperation(T t) throws Exception {
		return dao.findOperation(t);
	}

	public void updateOperation(T t) throws Exception {
		dao.updateOperation(t);
	}

}
