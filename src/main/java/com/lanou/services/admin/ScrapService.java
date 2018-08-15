package com.lanou.services.admin;

import com.lanou.entity.Scrap;
import com.lanou.util.DataTables;

public interface ScrapService {
	/**
	 * 遍历所有
	 * @param dataTables
	 * @return
	 */
	DataTables getScrapList(DataTables dataTables);
	/**
	 * 分页
	 * @param name
	 * @return
	 */
	int totalCount(String name);
	
	
	int deleteByPrimaryKey(Integer id) throws Exception;

	Scrap selectByPrimaryKey(Integer id);

	int insertSelective(Scrap scrap)throws Exception;

	int updateByPrimaryKeySelective(Scrap scrap) throws Exception;
}
