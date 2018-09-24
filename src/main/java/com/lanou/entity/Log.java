package com.lanou.entity;

import java.util.Date;

public class Log {
    private Integer id;

    private Integer logType;

    private String operObject;

    private String operTable;

    private Integer operId;

    private String operType;

    private String operRemark;

    private Date createTime;

    private Integer createId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLogType() {
        return logType;
    }

    public void setLogType(Integer logType) {
        this.logType = logType;
    }

    public String getOperObject() {
        return operObject;
    }

    public void setOperObject(String operObject) {
        this.operObject = operObject == null ? null : operObject.trim();
    }

    public String getOperTable() {
        return operTable;
    }

    public void setOperTable(String operTable) {
        this.operTable = operTable == null ? null : operTable.trim();
    }

    public Integer getOperId() {
        return operId;
    }

    public void setOperId(Integer operId) {
        this.operId = operId;
    }

    public String getOperType() {
        return operType;
    }

    public void setOperType(String operType) {
        this.operType = operType == null ? null : operType.trim();
    }

    public String getOperRemark() {
        return operRemark;
    }

    public void setOperRemark(String operRemark) {
        this.operRemark = operRemark == null ? null : operRemark.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCreateId() {
        return createId;
    }

    public void setCreateId(Integer createId) {
        this.createId = createId;
    }
}