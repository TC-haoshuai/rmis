package com.lanou.services.admin;

import com.lanou.entity.Collector;
import com.lanou.entity.Scrap;
import com.lanou.util.DataTables;

public interface ScrapCollectorService {
	
	/**
	 * 遍历所有
	 * @param dataTables
	 * @return
	 */
	DataTables getScrapCollectorList(DataTables dataTables);
	/**
	 * 分页
	 * @param name
	 * @return
	 */
	int totalCount(String name);
	
	
	int deleteByPrimaryKey(Integer id);

	Collector selectByPrimaryKey(Integer id);

	int insertSelective(Collector collector);

	int updateByPrimaryKeySelective(Collector collector);
}
