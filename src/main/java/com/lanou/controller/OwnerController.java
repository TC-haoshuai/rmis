package com.lanou.controller;

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

import com.lanou.entity.Owner;
import com.lanou.services.admin.OwnerService;
import com.lanou.util.DataTables;

@Controller
public class OwnerController {

	@Resource
	private OwnerService ownerService;
	
	@RequestMapping("/owner/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return ownerService.getOwnerList(DataTables.getInstance(request, null));
	}
	
	@ResponseBody
	@RequestMapping("/owner/getdictById")
	public Object  selectByPrimaryKey(Integer id) {
		return ownerService.selectByPrimaryKey(id);
	}
	
	@ResponseBody
	@RequestMapping("/owner/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			ownerService.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/owner/add")
	private  Object add(Owner owner) {
		Map<String, Object> map = new HashMap<>();
		if (ownerService.insertSelective(owner)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/owner/update")
	private  Object update(Owner owner) {
		Map<String, Object> map = new HashMap<>();
		if (ownerService.updateByPrimaryKeySelective(owner)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	
	
}
