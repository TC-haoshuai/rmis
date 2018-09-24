package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Contact;
@MapperScan
public interface ContactMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);
}