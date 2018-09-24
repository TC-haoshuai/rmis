package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Weixin;
@MapperScan
public interface WeixinMapper {
    int insert(Weixin record);

    int insertSelective(Weixin record);
}