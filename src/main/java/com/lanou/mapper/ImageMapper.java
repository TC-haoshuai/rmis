package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Image;
@MapperScan
public interface ImageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Image record);

    int insertSelective(Image record);

    Image selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Image record);

    int updateByPrimaryKey(Image record);
}