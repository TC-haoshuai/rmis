package com.lanou.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.lanou.entity.Menu;
import com.lanou.services.admin.MenuServices;
import com.lanou.util.DataTables;

@Controller
public class MenuController {
	@Resource
	private MenuServices menuServices;


	@RequestMapping("/menu/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return menuServices.getMenuList(DataTables.getInstance(request, null));
	}
	@ResponseBody
	@RequestMapping("/menu/menuListJson")
	private Object selectAll() {
		Map<String, Object> map = new HashMap<String, Object>();

		List<Menu> menus = menuServices.selectAll();
		if (menus.isEmpty()) {
			map.put("state", false);
			map.put("menuList", null);
		} else {
			map.put("state", true);
			map.put("menuList", menus);
		}
		return map;

	}
	@ResponseBody
	@RequestMapping("/menu/getMenuById")
	private  Object getUserById(@RequestParam("id") Integer id){
		return menuServices.getMenuById(id);
	}

	@ResponseBody
	@RequestMapping("/menu/del")
	private Object delete(@RequestParam("idlist[]") List<Integer> idlist) {
		System.err.println(idlist);
		if (idlist.isEmpty() || idlist == null) {
			return 500;
		}
		for (Integer integer : idlist) {
			System.out.println(integer);
			menuServices.delete(integer);
		}
		return 200;
	}
	@ResponseBody
	@RequestMapping("/menu/add")
	private  Object add(Menu menu) {
		menu.setCreateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (menuServices.addMenu(menu)) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/menu/update")
	private  Object update(Menu menu) {
		menu.setUpdateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (menuServices.updateMenu(menu)) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
}
