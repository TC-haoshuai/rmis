package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Error;
import com.lanou.entity.ErrorWithBLOBs;
@MapperScan
public interface ErrorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ErrorWithBLOBs record);

    int insertSelective(ErrorWithBLOBs record);

    ErrorWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ErrorWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ErrorWithBLOBs record);

    int updateByPrimaryKey(Error record);
}