package com.lanou.services.admin;

import java.util.List;

import com.lanou.entity.Estate;
import com.lanou.util.DataTables;

public interface HousingEstateService {
	
	/**
	 * 遍历所有
	 * @param dataTables
	 * @return
	 */
	DataTables getEstateList(DataTables dataTables);
	/**
	 * 分页
	 * @param name
	 * @return
	 */
	int totalCount(String name);
	
	
	int deleteByPrimaryKey(Integer id) throws Exception;

	Estate selectByPrimaryKey(Integer id);

	int insertSelective(Estate order) throws Exception;

	int updateByPrimaryKeySelective(Estate order) throws Exception;
	
	List<Estate> select(Integer cityCode);
}
