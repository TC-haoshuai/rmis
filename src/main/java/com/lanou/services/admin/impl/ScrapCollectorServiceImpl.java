package com.lanou.services.admin.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Collector;
import com.lanou.mapper.CollectorMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.ScrapCollectorService;
import com.lanou.util.DataTables;
@Service
public class ScrapCollectorServiceImpl extends BaseService  implements ScrapCollectorService{

	@Resource
	private CollectorMapper collectorMapper;
	
	public DataTables getScrapCollectorList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("name asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(CollectorMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Collector> pageInfo = new PageInfo<Collector>(collectorMapper.getPageList(dataTables.getSearch(), null));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Collector>());
		return dataTables;
	}
	
	@Override
	public int totalCount(String name) {
		return collectorMapper.getTotalCount(name);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return collectorMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Collector selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return collectorMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Collector collector) {
		// TODO Auto-generated method stub
		return collectorMapper.insert(collector);
	}

	@Override
	public int updateByPrimaryKeySelective(Collector collector) {
		// TODO Auto-generated method stub
		return collectorMapper.updateByPrimaryKeySelective(collector);
	}

}
