package com.lanou.services.admin.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Dict;
import com.lanou.mapper.DictMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.DictService;
import com.lanou.util.DataTables;
@Service
public class DictServiceImpl extends BaseService  implements DictService {
	@Resource
	private DictMapper dictMapper;
	
	public DataTables getDictList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("sort asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(DictMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Dict> pageInfo = new PageInfo<Dict>(dictMapper.getPageList(dataTables.getSearch(), dataTables.getSubSQL()));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Dict>());
		return dataTables;
	}
	
	@Override
	public int totalCount(String name) {
		return dictMapper.getTotalCount(name);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return dictMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Dict selectByPrimaryKey(Integer id) {
		return dictMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Dict dict) {
		return dictMapper.insert(dict);
	}

	@Override
	public int updateByPrimaryKeySelective(Dict dict) {
		// TODO Auto-generated method stub
		return dictMapper.updateByPrimaryKeySelective(dict);
	}

	@Override
	public List<Dict> selectAll() {
		// TODO Auto-generated method stub
		return dictMapper.selectAll();
	}
}
