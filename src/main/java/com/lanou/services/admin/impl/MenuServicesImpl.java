package com.lanou.services.admin.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Menu;
import com.lanou.mapper.MenuMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.MenuServices;
import com.lanou.util.DataTables;
@Service
public class MenuServicesImpl extends BaseService implements MenuServices {
	
	@Resource
	private MenuMapper menuMapper;
	public DataTables getMenuList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("sort asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(MenuMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Menu> pageInfo = new PageInfo<Menu>(menuMapper.getPageList(dataTables.getSearch(), dataTables.getSubSQL()));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Menu>());
		return dataTables;
	}
	@Override
	public int totalCount(String name) {
		// TODO Auto-generated method stub
		return menuMapper.getTotalCount(name);
	}
	@Override
	public boolean addMenu(Menu menu) {
		int insert = menuMapper.insert(menu);
		if (insert>0) {
			return true;
		}
		return false;
	}
	@Override
	public boolean updateMenu(Menu menu) {
		int update = menuMapper.update(menu);
		if (update>0) {
			return true;
		}
		return false;
	}
	@Override
	public Menu getMenuById(Integer id) {
		return menuMapper.getMenuById(id);
	}
	@Override
	public int delete(Integer id) {
		
		return menuMapper.deleteByPrimaryKey(id);
	}
	@Override
	public List<Menu> selectAll() {
		return menuMapper.selectAll();
	}
	
	
	
}
