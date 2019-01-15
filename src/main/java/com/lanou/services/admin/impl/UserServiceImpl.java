package com.lanou.services.admin.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou.entity.Menu;
import com.lanou.entity.User;
import com.lanou.mapper.UserMapper;
import com.lanou.services.BaseService;
import com.lanou.services.admin.UserService;
import com.lanou.util.DataTables;


/**
 * @author 
 * @date 2017年10月16日 下午2:37:56
 * @for
 */
@Service
public class UserServiceImpl extends BaseService implements UserService {

	@Resource
	private UserMapper userMapper;
	
	@Override
	public User selectByPrimaryKey(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}
	
	/*	获取所有的用户
	 * @see com.xing.rmis.service.UserService#selectAllUser()
	 */
	@Override
	public DataTables getUserList(DataTables dataTables) {
		PageHelper.startPage(dataTables.getStart(), dataTables.getLength()); // 核心分页代码 
		PageHelper.orderBy("username asc");
		
		if(!StringUtils.isEmpty(dataTables.getColumn())){
			String column = propertyToColumn(UserMapper.class, dataTables.getColumn());
			if(!StringUtils.isEmpty(column)){
				PageHelper.orderBy(column + " " + dataTables.getOrder());
			}
		}
		
		PageInfo<User> pageInfo = new PageInfo<User>(userMapper.getPageList(dataTables.getSearch(),dataTables.getTimeMin(),dataTables.getTimeMax(), null));
		dataTables.setRecordsTotal(totalCount(dataTables.getSearch(),dataTables.getTimeMin(),dataTables.getTimeMax()));
		dataTables.setRecordsFiltered(totalCount(dataTables.getSearch(),dataTables.getTimeMin(),dataTables.getTimeMax()));
		dataTables.setData(pageInfo.getList() != null ? pageInfo.getList() : new ArrayList<User>());
		
		return dataTables;
	}
	
	@Override
	public int totalCount(String name,String timeMin,String timeMax) {
		// TODO Auto-generated method stub
		return userMapper.getTotalCount(name,timeMin,timeMax);
	}
	/* 
	 * @see com.xing.rmis.service.UserService#deleteUserByPrimaryKey(java.lang.Integer)
	 */
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(id)>0?true:false;
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.insert(record);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(record);
	}

}
