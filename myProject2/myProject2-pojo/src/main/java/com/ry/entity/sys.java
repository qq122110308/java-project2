package com.ry.entity;

public class sys {
    private Integer sysId;

    private String sysName;

    private Integer sysType;

    private String sysUrl;

    private String sysIcon;

    private String sysLast;

    public Integer getSysId() {
        return sysId;
    }

    public void setSysId(Integer sysId) {
        this.sysId = sysId;
    }

    public String getSysName() {
        return sysName;
    }

    public void setSysName(String sysName) {
        this.sysName = sysName == null ? null : sysName.trim();
    }

    public Integer getSysType() {
        return sysType;
    }

    public void setSysType(Integer sysType) {
        this.sysType = sysType;
    }

    public String getSysUrl() {
        return sysUrl;
    }

    public void setSysUrl(String sysUrl) {
        this.sysUrl = sysUrl == null ? null : sysUrl.trim();
    }

    public String getSysIcon() {
        return sysIcon;
    }

    public void setSysIcon(String sysIcon) {
        this.sysIcon = sysIcon == null ? null : sysIcon.trim();
    }

    public String getSysLast() {
        return sysLast;
    }

    public void setSysLast(String sysLast) {
        this.sysLast = sysLast == null ? null : sysLast.trim();
    }
}