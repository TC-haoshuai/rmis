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

import com.lanou.entity.Dict;
import com.lanou.services.admin.DictService;
import com.lanou.util.DataTables;

@Controller
public class DictController {
	
	
	@Resource
	private DictService dictService;
	@RequestMapping("/dict/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return dictService.getDictList(DataTables.getInstance(request, null));
	}
	
	@ResponseBody
	@RequestMapping("/dict/selectAll")
	public Object roleList(){
		List<Dict> dicts = dictService.selectAll();
		return dicts;
	}
	
	@ResponseBody
	@RequestMapping("/dict/getdictById")
	public Object  selectByPrimaryKey(Integer id) {
		return dictService.selectByPrimaryKey(id);
	}
	
	@ResponseBody
	@RequestMapping("/dict/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			dictService.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/dict/add")
	private  Object add(Dict dict) {
		Map<String, Object> map = new HashMap<>();
		if (dictService.insertSelective(dict)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/dict/update")
	private  Object update(Dict dict) {
		Map<String, Object> map = new HashMap<>();
		if (dictService.updateByPrimaryKeySelective(dict)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
}
