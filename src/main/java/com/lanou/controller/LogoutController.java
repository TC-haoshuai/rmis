package com.lanou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lanou.util.Constants;



@Controller
public class LogoutController {

	@RequestMapping("/admin/logout")
	public ModelAndView  logout(HttpServletRequest request){
		
		ModelAndView m = new ModelAndView();
		
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";
		//清除session
		request.getSession().removeAttribute(Constants.USER_SESSION);
		m.setViewName("redirect:"+basePath);
		return m;
	}
}
