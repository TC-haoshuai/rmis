package com.lanou.services.admin;

import java.util.List;

import com.lanou.entity.Role;
import com.lanou.util.DataTables;

public interface RoleService {
	List<Role> selectAll();

	DataTables getRoleList(DataTables dataTables);

	int totalCount(String name);

	int deleteByPrimaryKey(Integer id);

	Role selectByPrimaryKey(Integer id);

	int insertSelective(Role role);

	int updateByPrimaryKeySelective(Role role);
}
