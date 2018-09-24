package com.lanou.entity;

import java.util.Date;

public class File {
    private Integer id;

    private Integer userId;

    private String fName;

    private Date fTime;

    private String fPath;

    private Long fSize;

    private Integer fDownload;

    private Integer fType;

    private String fDescription;

    private String fNameOld;

    private String md5;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName == null ? null : fName.trim();
    }

    public Date getfTime() {
        return fTime;
    }

    public void setfTime(Date fTime) {
        this.fTime = fTime;
    }

    public String getfPath() {
        return fPath;
    }

    public void setfPath(String fPath) {
        this.fPath = fPath == null ? null : fPath.trim();
    }

    public Long getfSize() {
        return fSize;
    }

    public void setfSize(Long fSize) {
        this.fSize = fSize;
    }

    public Integer getfDownload() {
        return fDownload;
    }

    public void setfDownload(Integer fDownload) {
        this.fDownload = fDownload;
    }

    public Integer getfType() {
        return fType;
    }

    public void setfType(Integer fType) {
        this.fType = fType;
    }

    public String getfDescription() {
        return fDescription;
    }

    public void setfDescription(String fDescription) {
        this.fDescription = fDescription == null ? null : fDescription.trim();
    }

    public String getfNameOld() {
        return fNameOld;
    }

    public void setfNameOld(String fNameOld) {
        this.fNameOld = fNameOld == null ? null : fNameOld.trim();
    }

    public String getMd5() {
        return md5;
    }

    public void setMd5(String md5) {
        this.md5 = md5 == null ? null : md5.trim();
    }
}