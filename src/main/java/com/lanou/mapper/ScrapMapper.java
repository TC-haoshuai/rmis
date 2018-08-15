package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Scrap;
@MapperScan
public interface ScrapMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Scrap record);

    int insertSelective(Scrap record);

    Scrap selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Scrap record);

    int updateByPrimaryKey(Scrap record);
    
    
    
    /**
   	 * 分页菜单列表
   	 * 
   	 * 
   	 * @since 2016年8月11日 下午9:28:54
   	 * @param search
   	 * @param column
   	 * @return
   	 */
   	List<Scrap> getPageList(@Param("search") String search, @Param("subSQL") String subSQL);
   	/**
   	 * 获取总条数
   	 * @param search
   	 * @return
   	 */
   	Integer getTotalCount(@Param("search") String search );
}