package com.lanou.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.lanou.entity.ImageAlbum;
@MapperScan
public interface ImageAlbumMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ImageAlbum record);

    int insertSelective(ImageAlbum record);

    ImageAlbum selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ImageAlbum record);

    int updateByPrimaryKeyWithBLOBs(ImageAlbum record);

    int updateByPrimaryKey(ImageAlbum record);
}