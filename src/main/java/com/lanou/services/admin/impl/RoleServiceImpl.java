package com.lanou.services.admin.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Role;
import com.lanou.mapper.RoleMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.RoleService;
import com.lanou.util.DataTables;
@Service
public class RoleServiceImpl extends BaseService implements RoleService{
	@Resource
	private RoleMapper roleMapper;
	
	
	public DataTables getRoleList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("name asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(RoleMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Role> pageInfo = new PageInfo<Role>(roleMapper.getPageList(dataTables.getSearch(), null));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Role>());
		return dataTables;
	}
	@Override
	public int totalCount(String name) {
		// TODO Auto-generated method stub
		return roleMapper.getTotalCount(name);
	}
	
	@Override
	public List<Role> selectAll() {
		return roleMapper.selectAll();
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return roleMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.insert(role);
	}
	@Override
	public int updateByPrimaryKeySelective(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.updateByPrimaryKeySelective(role);
	}

	@Override
	public Role selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return roleMapper.selectByPrimaryKey(id);
	}
}

	
