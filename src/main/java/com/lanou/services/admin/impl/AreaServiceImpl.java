package com.lanou.services.admin.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lanou.entity.Area;
import com.lanou.mapper.AreaMapper;
import com.lanou.services.admin.AreaService;

@Service
public class AreaServiceImpl implements AreaService{
	@Resource
	private AreaMapper areaMapper;

	@Override
	public List<Area> selectAll() {
		// TODO Auto-generated method stub
		return areaMapper.selectAll();
	}
}
