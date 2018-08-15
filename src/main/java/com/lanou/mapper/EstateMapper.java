package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Estate;
@MapperScan
public interface EstateMapper {
    int deleteByPrimaryKey(Integer id) throws Exception;

    int insert(Estate record);

    int insertSelective(Estate record) throws Exception;

    Estate selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Estate record) ;

    int updateByPrimaryKey(Estate record) throws Exception;
    
    List<Estate> select(Integer cityCode);
    
    /**
	 * 分页菜单列表
	 * 
	 * 
	 * @since 2016年8月11日 下午9:28:54
	 * @param search
	 * @param column
	 * @return
	 */
	List<Estate> getPageList(@Param("search") String search, @Param("subSQL") String subSQL);
	/**
	 * 获取总条数
	 * @param search
	 * @return
	 */
	Integer getTotalCount(@Param("search") String search );
}