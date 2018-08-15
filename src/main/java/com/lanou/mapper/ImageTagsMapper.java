package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.ImageTags;
@MapperScan
public interface ImageTagsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ImageTags record);

    int insertSelective(ImageTags record);

    ImageTags selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ImageTags record);

    int updateByPrimaryKey(ImageTags record);
}