package com.lanou.services.admin.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Owner;
import com.lanou.mapper.OwnerMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.OwnerService;
import com.lanou.util.DataTables;
@Service
public class OwnerServiceImpl extends BaseService  implements OwnerService{

	@Resource
	private OwnerMapper ownerMapper;
	
	
	public DataTables getOwnerList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("name asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(OwnerMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Owner> pageInfo = new PageInfo<Owner>(ownerMapper.getPageList(dataTables.getSearch(), null));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Owner>());
		return dataTables;
	}
	
	@Override
	public int totalCount(String name) {
		return ownerMapper.getTotalCount(name);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return ownerMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Owner selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return ownerMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Owner owner) {
		// TODO Auto-generated method stub
		return ownerMapper.insert(owner);
	}

	@Override
	public int updateByPrimaryKeySelective(Owner owner) {
		// TODO Auto-generated method stub
		return ownerMapper.updateByPrimaryKeySelective(owner);
	}

}
