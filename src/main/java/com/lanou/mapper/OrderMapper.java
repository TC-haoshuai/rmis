package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Order;
@MapperScan
public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    
    /**
	 * 分页菜单列表
	 * 
	 * 
	 * @since 2016年8月11日 下午9:28:54
	 * @param search
	 * @param column
	 * @return
	 */
	List<Order> getPageList(@Param("search") String search, @Param("subSQL") String subSQL);
	/**
	 * 获取总条数
	 * @param search
	 * @return
	 */
	Integer getTotalCount(@Param("search") String search );
	
	/**
	 * 查询所有
	 * 进行遍历
	 * @return
	 */
}