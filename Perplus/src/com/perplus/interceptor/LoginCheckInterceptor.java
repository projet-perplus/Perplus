package com.perplus.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{

		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
			HttpSession session = request.getSession();
			if(session.getAttribute("login_info")==null){
				throw new ModelAndViewDefiningException(new ModelAndView("/WEB-INF/view/common/dialog/logindialog.jsp","error_message", "로그인 먼저 하세요"));
			}
			return super.preHandle(request, response, handler);
		}
	  
		@Override
		public void postHandle(HttpServletRequest request,
				HttpServletResponse response, Object handler,
				ModelAndView modelAndView) throws Exception {
			//로그아웃 후 웹 브라우저 back 버튼 클릭시 이전페이지에 로그인 된 상태로 보이는 것 안되도록 처리
			//로그인한 후 보는 모든 페이지들이 cache 사용하지 않도록 처리한다.!
			
			response.setHeader("cache-control", "no-store, no-cache");
		}

}
