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

import com.lanou.entity.Role;
import com.lanou.services.admin.RoleService;
import com.lanou.util.DataTables;


@Controller
public class RoleController {
	
	@Resource
	private RoleService roleServices;
	
	/**
	 * 	获取所有的用户列表，返回modelAndView
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/role/getPageList")
	public  Object getRoleList(HttpServletRequest request){
		return roleServices.getRoleList((DataTables.getInstance(request, null)));
	}
	@ResponseBody
	@RequestMapping("/role/roleListJson")
	public Object roleList(){
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<Role> roles = roleServices.selectAll();
		if (roles.isEmpty()) {
			map.put("state", false);
			map.put("roleList", null);
		}else{
			map.put("state", true);
			map.put("roleList", roles);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/role/getRoleById")
	public Object  selectByPrimaryKey(Integer id) {
		return roleServices.selectByPrimaryKey(id);
	}
	@ResponseBody
	@RequestMapping("/role/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			roleServices.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/role/add")
	private  Object add(Role role) {
		role.setCreateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (roleServices.insertSelective(role)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/role/update")
	private  Object update(Role role) {
		role.setUpdateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (roleServices.updateByPrimaryKeySelective(role)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
}
