package com.lanou.services.admin;

import java.util.List;

import com.lanou.entity.Menu;
import com.lanou.util.DataTables;

public interface MenuServices {

	DataTables getMenuList(DataTables dataTables);

	Menu getMenuById(Integer id);

	int totalCount(String name);
	
	int delete(Integer id);

	boolean addMenu(Menu menu);

	boolean updateMenu(Menu menu);
	
	List<Menu> selectAll();

}
