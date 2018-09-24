package com.lanou.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou.entity.User;
import com.lanou.services.admin.UserService;
import com.lanou.util.DataTables;
import com.lanou.util.MD5Utils;


/**
 * @author 
 * @date 2017年10月16日 下午2:58:54
 * @for restFul
 */

@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	
	/**
	 * 	获取所有的用户列表，返回modelAndView
	 * @return
	 */
	
	@RequestMapping("/admin/getPageList")
	public @ResponseBody Object getAdminList(HttpServletRequest request){
		return userService.getUserList((DataTables.getInstance(request, null)));
	}
	/**
	 * 测试json乱码
	 * @return
	 */
	
	@ResponseBody
	@RequestMapping("/admin/getAdminById")
	public Object  selectByPrimaryKey(Integer id) {
		return userService.selectByPrimaryKey(id);
	}
	

	@ResponseBody
	@RequestMapping("/admin/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			System.out.println(integer);
			userService.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/admin/add")
	private  Object add(User user) {
		user.setCreateTime(new Date());
		
		Map<String, Object> map = new HashMap<>();
		
		user.setPassword(MD5Utils.getMD5Value(user.getPassword()));
		if (userService.insertSelective(user)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/admin/update")
	private  Object update(User user) {
		Map<String, Object> map = new HashMap<>();
		user.setPassword(MD5Utils.getMD5Value(user.getPassword()));
		if (userService.updateByPrimaryKeySelective(user)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	
	
}
