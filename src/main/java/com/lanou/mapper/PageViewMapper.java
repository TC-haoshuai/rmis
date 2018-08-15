package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.PageView;
@MapperScan
public interface PageViewMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PageView record);

    int insertSelective(PageView record);

    PageView selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PageView record);

    int updateByPrimaryKey(PageView record);
}