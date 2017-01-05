package dingzhen.interceptor;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import dingzhen.entity.Log;
import dingzhen.entity.Role;
import dingzhen.entity.Token;
import dingzhen.entity.User;
import dingzhen.service.LogService;
import dingzhen.service.RoleService;
import dingzhen.service.TokenService;
import dingzhen.service.UserService;
import dingzhen.util.IpUtil;
import dingzhen.util.TimeUtil;

/**
 *@author: wangq
 *@date: 2015-8-15下午12:39:50
 *@version:
 *@description：登录拦截器
 */
@SuppressWarnings("unchecked")
public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	
	private Map map;
	private Log log;
	private Token token;
	private Role role;
	@Autowired
	private RoleService<Role> roleService;
	@Autowired
	private UserService<User> userService;
	@Autowired
	private LogService<Log> logService;
	@Autowired
	private TokenService<Token> tokenService;
	
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// 请求的路径
		String url = request.getServletPath().toString();
		HttpSession session = request.getSession();
		User currentUser = ((User) session.getAttribute("currentUser"));
		if (currentUser == null) {
			if (url.contains("login") || url.contains("Login")) {
				return true;
			}
			request.getRequestDispatcher("login.jsp").forward(request, response);
	        return true;
		}
		return true;
	}
}
