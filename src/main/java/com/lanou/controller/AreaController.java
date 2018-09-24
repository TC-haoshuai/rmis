package com.lanou.controller;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou.entity.Area;
import com.lanou.services.admin.AreaService;

@Controller
public class AreaController {
	@Resource
	private AreaService areaService;
	
	
	@ResponseBody
	@RequestMapping("/housing_estate/getArea")
	private Object selectAll() {
		List<Area> menus = areaService.selectAll();
		return menus;

	}
	
	
}
