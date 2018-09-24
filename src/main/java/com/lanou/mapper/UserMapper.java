package com.lanou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.Menu;
import com.lanou.entity.User;
@MapperScan
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    /**
     * 登录
     * @param username
     * @param password
     * @return
     */
    User login(String username);

    /**
	 * 分页菜单列表
	 * 
	 * 
	 * @since 2016年8月11日 下午9:28:54
	 * @param search
	 * @param column
	 * @return
	 */
	List<User> getPageList(@Param("search") String search,@Param("timeMin")String timeMin,@Param("timeMax") String timeMax,@Param("subSQL") String subSQL);
	/**
	 * 获取总条数
	 * @param search
	 * @return
	 */
	Integer getTotalCount(@Param("search") String search ,@Param("timeMin") String timeMin,@Param("timeMax") String timeMax);
	
}