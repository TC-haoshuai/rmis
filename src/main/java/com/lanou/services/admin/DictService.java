package com.lanou.services.admin;

import java.util.List;

import com.lanou.entity.Dict;
import com.lanou.util.DataTables;

public interface DictService {
	
	/**
	 * 遍历所有
	 * @param dataTables
	 * @return
	 */
	DataTables getDictList(DataTables dataTables);
	/**
	 * 分页
	 * @param name
	 * @return
	 */
	int totalCount(String name);
	
	
	int deleteByPrimaryKey(Integer id);

	Dict selectByPrimaryKey(Integer id);

	int insertSelective(Dict dict);

	int updateByPrimaryKeySelective(Dict dict);
	
	List<Dict> selectAll();
}
