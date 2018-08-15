package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.FriendlyLink;
@MapperScan
public interface FriendlyLinkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FriendlyLink record);

    int insertSelective(FriendlyLink record);

    FriendlyLink selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FriendlyLink record);

    int updateByPrimaryKey(FriendlyLink record);
}