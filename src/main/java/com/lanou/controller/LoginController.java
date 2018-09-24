package com.lanou.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou.entity.User;
import com.lanou.services.login.UserLoginServices;
import com.lanou.util.MD5Utils;
import com.lanou.util.VerifyCodeUtils;

@Controller
public class LoginController {

	

	@Resource
	private UserLoginServices userLoginServices;

	/**
	 * 
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/getValidateCode")
	public void getValidateCode(HttpServletResponse response, HttpServletRequest request) {
		 String verifyCode = VerifyCodeUtils.generateVerifyCode(4); 
		 response.setContentType("image/jpeg");
		 response.setHeader("Pragma", "no-cache");
		 response.setHeader("Cache-Control", "no-cache");
		 response.setDateHeader("Expires", 0);
	        HttpSession session = request.getSession(true); 
	        session.removeAttribute("verCode");
	        session.setAttribute("verCode", verifyCode.toLowerCase()); 
	        int w = 100, h = 30; 
	        try {
				VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
			} catch (IOException e) {
				e.printStackTrace();
			}
				
	
	}

	@ResponseBody
	@RequestMapping("/goLogin")
	public Object login(HttpServletRequest request) {
		String userName = request.getParameter("username");
		 String passWord = MD5Utils.getMD5Value(request.getParameter("password"));

		String validateCode = request.getParameter("ValidateCode");
		String verCode = (String) request.getSession().getAttribute("verCode");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("username", userName);
		map.put("password", passWord);
		User user = userLoginServices.login(userName,passWord);
		String getpass = user.getPassword();
		if (validateCode.equalsIgnoreCase(verCode)) {
			if (null != user&&getpass.equals(passWord)) {
				return "true";
			} else {
				return "false";
			}
		} else {
			return "false_ValidateCode";
		}

	}

}
