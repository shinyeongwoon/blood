package com.example.demo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Loginfilter implements Filter {

	//프로그램이 죽을때 실행 해야 할
	@Override
	public void destroy() {
		

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		//User 세션 값이 있으면 통과!
		if (session.getAttribute("loginedUser") != null) {
		chain.doFilter(req, res);
		return;
		}
		
		res.sendRedirect("http://localhost:8099/users/login");

	}
	// 처음 생성될때 실행 해야 할
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		

	}

}
