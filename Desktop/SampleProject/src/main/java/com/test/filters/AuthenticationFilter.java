package com.test.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		
		if(req.getRequestURI().startsWith("/HPlussample/orderHistory")||
				(req.getRequestURI().startsWith("/HPlussample/getProfileDetails"))) {
			HttpSession session = req.getSession();
			if(session.getAttribute("username") == null) {
				req.getRequestDispatcher("html/login.jsp").forward(request, response);
			}
		}
		
		chain.doFilter(req, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
