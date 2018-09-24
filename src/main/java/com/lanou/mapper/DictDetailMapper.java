package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.DictDetail;
@MapperScan
public interface DictDetailMapper {
    int deleteByPrimaryKey(Integer detailId);

    int insert(DictDetail record);

    int insertSelective(DictDetail record);

    DictDetail selectByPrimaryKey(Integer detailId);

    int updateByPrimaryKeySelective(DictDetail record);

    int updateByPrimaryKey(DictDetail record);
}