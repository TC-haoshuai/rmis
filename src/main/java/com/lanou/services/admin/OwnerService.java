package com.lanou.services.admin;

import com.lanou.entity.Owner;
import com.lanou.util.DataTables;

public interface OwnerService {

	/**
	 * 遍历所有
	 * @param dataTables
	 * @return
	 */
	DataTables getOwnerList(DataTables dataTables);
	/**
	 * 分页
	 * @param name
	 * @return
	 */
	int totalCount(String name);
	
	
	int deleteByPrimaryKey(Integer id);

	Owner selectByPrimaryKey(Integer id);

	int insertSelective(Owner owner);

	int updateByPrimaryKeySelective(Owner owner);
	

}
