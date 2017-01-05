package dingzhen.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dingzhen.dao.TokenDao;
import dingzhen.service.TokenService;

/**
 *@author: wangq
 *@date: 2015-8-15上午09:03:56
 *@version:
 *@description：
 */
@Service("tokenService")
public class TokenServiceImpl<T> implements TokenService<T>{
	
	@Autowired
	private TokenDao<T> dao;

	public void insertToken(T t) {
		dao.insertToken(t);
	}

	@SuppressWarnings("unchecked")
	public T findOneToken(Map map) {
		return dao.findOneToken(map);
	}

}
