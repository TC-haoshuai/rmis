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

import com.lanou.entity.Order;
import com.lanou.services.admin.ReclamationOrderService;
import com.lanou.util.DataTables;

@Controller
public class ReclamationOrderController {
	@Resource
	private ReclamationOrderService reclamationOrderService;
	
	@RequestMapping("/reclamation_order/getPageList")
	private @ResponseBody Object query(HttpServletRequest request, HttpServletResponse response) {
		return reclamationOrderService.getOrderList(DataTables.getInstance(request, null));
	}
	
	@ResponseBody
	@RequestMapping("/reclamation_order/getdictById")
	public Object  selectByPrimaryKey(Integer id) {
		return reclamationOrderService.selectByPrimaryKey(id);
	}
	
	@ResponseBody
	@RequestMapping("/reclamation_order/del")
	public Object del(@RequestParam("idlist[]") List<Integer> idlist) {
		if (idlist.isEmpty()||idlist==null) {
			return 500;
		}
		for (Integer integer : idlist) {
			reclamationOrderService.deleteByPrimaryKey(integer);
		}
		return 200;
	}
	
	@ResponseBody
	@RequestMapping("/reclamation_order/add")
	private  Object add(Order order) {
		order.setCreateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (reclamationOrderService.insertSelective(order)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping("/reclamation_order/update")
	private  Object update(Order order) {
		order.setUpdateTime(new Date());
		Map<String, Object> map = new HashMap<>();
		if (reclamationOrderService.updateByPrimaryKeySelective(order)>0) {
			map.put("status", 200);
		} else {
			map.put("status", 500);
		}
		return map;
	}
}
