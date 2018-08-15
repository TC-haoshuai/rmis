package com.lanou.services;

import java.util.List;

import org.apache.ibatis.mapping.ResultMap;
import org.apache.ibatis.mapping.ResultMapping;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseService {

	Logger logger = LoggerFactory.getLogger(BaseService.class);

	@Autowired
	SqlSessionFactory sessionFactory; // myBatis鏍稿績宸ュ巶

	/**
	 * 
	 * @Title propertyToColumn
	 * @Description property杞珻olumn
	 *
	 * 
	 * @since 2016骞�10鏈�20鏃� 涓嬪崍9:40:13
	 *
	 * @param mapperName
	 * @param property
	 * @return String
	 */
	@SuppressWarnings("rawtypes")
	public String propertyToColumn(Class clazz,  String property) {
		if (property == null || property.equals("")) {
			return null;
		}
		
		String resultMapId = clazz.getName() + ".BaseResultMap";
		
		ResultMap resultMap = sessionFactory.getConfiguration().getResultMap(resultMapId);
		if (null == resultMap) {
			logger.error("resultMap 瀵硅薄涓虹┖");
			return null;
		}

		List<ResultMapping> resultMappings = resultMap.getResultMappings();

		if (null == resultMappings) {
			logger.error("resultMappings 瀵硅薄涓虹┖");
			return null;
		}

		Object[] resultMapping = resultMappings.stream().filter(map -> property.equals(map.getProperty())).map(ResultMapping::getColumn).toArray(); 
		
		if (resultMapping.length < 1) {
			return null;
		} else {
			return resultMapping[0].toString();
		}
	}

	
}
