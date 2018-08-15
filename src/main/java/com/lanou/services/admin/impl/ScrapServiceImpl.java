package com.lanou.services.admin.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Scrap;
import com.lanou.mapper.ScrapMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.ScrapService;
import com.lanou.util.DataTables;
@Service
public class ScrapServiceImpl extends BaseService  implements ScrapService {
	@Resource
	private ScrapMapper scrapMapper;
	
	public DataTables getScrapList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("sort asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(ScrapMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<Scrap> pageInfo = new PageInfo<Scrap>(scrapMapper.getPageList(dataTables.getSearch(), dataTables.getSubSQL()));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<Scrap>());
		return dataTables;
	}
	
	@Override
	public int totalCount(String name) {
		return scrapMapper.getTotalCount(name);
	}
    @Transactional
	@Override
	public int deleteByPrimaryKey(Integer id){
		int row = 0;
    	try {
    		 row = scrapMapper.deleteByPrimaryKey(id);
		} catch (Exception e) {
			throw e;
		}
		return row;
		
	}

	@Override
	public Scrap selectByPrimaryKey(Integer id) {
	
		return scrapMapper.selectByPrimaryKey(id);
	}
 
	@Transactional
	@Override
	public int insertSelective(Scrap scrap) {
		int row = 0 ;
		try {
			row = scrapMapper.insert(scrap);
		} catch (Exception e) {
			throw e;
		}
		return row;
	}

	@Transactional
	@Override
	public int updateByPrimaryKeySelective(Scrap scrap) {
		int row = 0;
		try {
			row = scrapMapper.updateByPrimaryKeySelective(scrap);
		} catch (Exception e) {
			throw e;
		}
		return row;
	}

}
