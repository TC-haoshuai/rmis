package com.lanou.services.admin;


import com.lanou.entity.Order;
import com.lanou.util.DataTables;

public interface ReclamationOrderService {
	/**
	 * 遍历所有
	 * @param dataTables
	 * @return
	 */
	DataTables getOrderList(DataTables dataTables);
	/**
	 * 分页
	 * @param name
	 * @return
	 */
	int totalCount(String name);
	
	
	int deleteByPrimaryKey(Integer id);

	Order selectByPrimaryKey(Integer id);

	int insertSelective(Order order);

	int updateByPrimaryKeySelective(Order order);
	
}
