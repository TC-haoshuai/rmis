package com.lanou.services.admin.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Order;
import com.lanou.mapper.OrderMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.ReclamationOrderService;
import com.lanou.util.DataTables;
@Service
public class ReclamationOrderServiceImpl extends BaseService  implements ReclamationOrderService{
	
	
	@Resource
	private OrderMapper orderMapper;
	
	public DataTables getOrderList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("order_no asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(OrderMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Order> pageInfo = new PageInfo<Order>(orderMapper.getPageList(dataTables.getSearch(), null));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Order>());
		return dataTables;
	}
	
	@Override
	public int totalCount(String name) {
		return orderMapper.getTotalCount(name);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Order selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.insert(order);
	}

	@Override
	public int updateByPrimaryKeySelective(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.updateByPrimaryKeySelective(order);
	}
}
