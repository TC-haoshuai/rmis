package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Order;
import com.lanou.entity.Owner;
@MapperScan
public interface OwnerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Owner record);

    int insertSelective(Owner record);

    Owner selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Owner record);

    int updateByPrimaryKey(Owner record);
    
    /**
	 * 分页菜单列表
	 * 
	 * 
	 * @since 2016年8月11日 下午9:28:54
	 * @param search
	 * @param column
	 * @return
	 */
	List<Owner> getPageList(@Param("search") String search, @Param("subSQL") String subSQL);
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