package com.lanou.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Area;

@MapperScan
public interface AreaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
    
    List<Area> selectAll();
}