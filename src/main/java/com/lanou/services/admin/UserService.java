package com.lanou.services.admin;

import com.lanou.entity.User;
import com.lanou.util.DataTables;

public interface UserService {

	User selectByPrimaryKey(Integer id);

	DataTables getUserList(DataTables dataTables);

	int totalCount(String name,String timeMin,String timeMax);

	boolean deleteByPrimaryKey(Integer id);

	int insertSelective(User record);

	int updateByPrimaryKeySelective(User record);

}
