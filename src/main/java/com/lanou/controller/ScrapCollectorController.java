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

import com.lanou.entity.Collector;
import com.lanou.services.admin.ScrapCollectorService;
import com.lanou.util.DataTables;

@Controller
public class ScrapCollectorController {
	
	
	@Resource
	private ScrapCollectorService scrapCollectorService;
	@RequestMapping("/scrap_collector/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return scrapCollectorService.getScrapCollectorList(DataTables.getInstance(request, null));
	}
	
	@ResponseBody
	@RequestMapping("/scrap_collector/getscrapCollectorById")
	public Object  selectByPrimaryKey(Integer id) {
		return scrapCollectorService.selectByPrimaryKey(id);
	}
	
	@ResponseBody
	@RequestMapping("/scrap_collector/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			scrapCollectorService.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/scrap_collector/add")
	private  Object add(Collector collector) {
		collector.setCreateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (scrapCollectorService.insertSelective(collector)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/scrap_collector/update")
	private  Object update(Collector collector) {
		Map<String, Object> map = new HashMap<>();
		if (scrapCollectorService.updateByPrimaryKeySelective(collector)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
}
