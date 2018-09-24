package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.RoleMenu;
@MapperScan
public interface RoleMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoleMenu record);

    int insertSelective(RoleMenu record);

    RoleMenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RoleMenu record);

    int updateByPrimaryKey(RoleMenu record);
}