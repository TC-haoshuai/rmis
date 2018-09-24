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

import com.lanou.entity.Estate;
import com.lanou.services.admin.HousingEstateService;
import com.lanou.util.DataTables;

@Controller
public class HousingEstateController {
	@Resource
	private HousingEstateService housingEstateService;

	@RequestMapping("/housing_estate/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return housingEstateService.getEstateList(DataTables.getInstance(request, null));
	}

	@ResponseBody
	@RequestMapping("/housing_estate/getHousingEstateByCity")
	private Object selectAll(@RequestParam("cityCode")Integer code) {
		List<Estate> estates = housingEstateService.select(code);
		return estates;

	}

	@ResponseBody
	@RequestMapping("/housing_estate/getHousingEstateById")
	private Object getUserById(@RequestParam("id") Integer id) {
		return housingEstateService.selectByPrimaryKey(id);
	}

	@ResponseBody
	@RequestMapping("/housing_estate/del")
	private Object delete(@RequestParam("idlist[]") List<Integer> idlist) {
		System.err.println(idlist);
		if (idlist.isEmpty() || idlist == null) {
			return 500;
		}
		for (Integer integer : idlist) {
			System.out.println(integer);
			try {
				housingEstateService.deleteByPrimaryKey(integer);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 200;
	}

	@ResponseBody
	@RequestMapping("/housing_estate/add")
	private Object add(Estate estate) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (housingEstateService.insertSelective(estate) > 0) {
				map.put("status", 200);
			} else {
				map.put("status", 500);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}

	@ResponseBody
	@RequestMapping("/housing_estate/update")
	private Object update(Estate estate) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (housingEstateService.updateByPrimaryKeySelective(estate) > 0) {
				map.put("status", 200);
			} else {
				map.put("status", 500);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
}
