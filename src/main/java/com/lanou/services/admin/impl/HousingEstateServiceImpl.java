package com.lanou.services.admin.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Estate;
import com.lanou.mapper.EstateMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.HousingEstateService;
import com.lanou.util.DataTables;

@Service
public class HousingEstateServiceImpl extends BaseService implements HousingEstateService {

	@Resource
	private EstateMapper estateMapper;

	@Override
	public List<Estate> select(Integer cityCode) {
		return estateMapper.select(cityCode);
	}

	@Override
	public DataTables getEstateList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码
		PageHelper.orderBy("sort asc");

		if (!StringUtils.isEmpty(dataTables.getColumn())) {
			String column = propertyToColumn(EstateMapper.class, dataTables.getColumn());
			if (!StringUtils.isEmpty(column)) {
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}

		PageInfo<Estate> pageInfo = new PageInfo<Estate>(
				estateMapper.getPageList(dataTables.getSearch(), dataTables.getSubSQL()));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Estate>());
		return dataTables;
	}

	@Override
	public int totalCount(String name) {
		return estateMapper.getTotalCount(name);
	}

	@Transactional
	@Override
	public int deleteByPrimaryKey(Integer id) throws Exception{
		// TODO Auto-generated method stub
		try {
			return estateMapper.deleteByPrimaryKey(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw e;
		}
	}

	@Override
	public Estate selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return estateMapper.selectByPrimaryKey(id);
	}

	@Transactional
	@Override
	public int insertSelective(Estate order) throws Exception{
		try {
			return estateMapper.insert(order);
		} catch (Exception e) {
			throw e;
		}		
	}

	@Transactional
	@Override
	public int updateByPrimaryKeySelective(Estate order) throws Exception{
		try {
			return estateMapper.updateByPrimaryKeySelective(order);
		} catch (Exception e) {
			throw e;
		}
		
	}

}
