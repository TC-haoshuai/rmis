package com.lanou.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou.entity.Scrap;
import com.lanou.services.admin.ScrapService;
import com.lanou.util.DataTables;

@Controller
public class ScrapController {
	@Resource
	private ScrapService scrapService;
	@RequestMapping("/scrap/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return scrapService.getScrapList(DataTables.getInstance(request, null));
	}
	
	@ResponseBody
	@RequestMapping("/scrap/getScrapById")
	public Object  selectByPrimaryKey(Integer id) {
		return scrapService.selectByPrimaryKey(id);
	}

	@ResponseBody
	@RequestMapping("/scrap/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) throws Exception {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			scrapService.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/scrap/add")
	private  Object add(Scrap Scrap) throws Exception {
		Map<String, Object> map = new HashMap<>();
		if (scrapService.insertSelective(Scrap)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/scrap/update")
	private  Object update(Scrap Scrap) throws Exception {
		Map<String, Object> map = new HashMap<>();
		if (scrapService.updateByPrimaryKeySelective(Scrap)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
}
