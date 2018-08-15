package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Collector;
@MapperScan
public interface CollectorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Collector record);

    int insertSelective(Collector record);

    Collector selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Collector record);

    int updateByPrimaryKey(Collector record);
    
    /**
   	 * 分页菜单列表
   	 * 
   	 * 
   	 * @since 2016年8月11日 下午9:28:54
   	 * @param search
   	 * @param column
   	 * @return
   	 */
   	List<Collector> getPageList(@Param("search") String search, @Param("subSQL") String subSQL);
   	/**
   	 * 获取总条数
   	 * @param search
   	 * @return
   	 */
   	Integer getTotalCount(@Param("search") String search );
    
}