package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Menu;
import com.lanou.entity.Role;
@MapperScan
public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKeyWithBLOBs(Role record);

    int updateByPrimaryKey(Role record);
    
    List<Role> selectAll();
    
    /**
	 * 分页菜单列表
	 * 
	 * 
	 * @since 2016年8月11日 下午9:28:54
	 * @param search
	 * @param column
	 * @return
	 */
	  List<Role> getPageList(@Param("search") String search, @Param("subSQL") String subSQL);
		
	/**
	 * 获取总条数
	 * @param search
	 * @return
	 */
	Integer getTotalCount(@Param("search") String search );
}