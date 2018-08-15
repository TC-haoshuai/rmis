package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.HeartBeat;
@MapperScan
public interface HeartBeatMapper {
    int insert(HeartBeat record);

    int insertSelective(HeartBeat record);
}