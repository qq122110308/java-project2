package com.ry.Entity;

public class Role {
    private Integer roleId;

    private String roleName;

    private String roleType;

    private String roleCreatetime;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getRoleType() {
        return roleType;
    }

    public void setRoleType(String roleType) {
        this.roleType = roleType == null ? null : roleType.trim();
    }

    public String getRoleCreatetime() {
        return roleCreatetime;
    }

    public void setRoleCreatetime(String roleCreatetime) {
        this.roleCreatetime = roleCreatetime == null ? null : roleCreatetime.trim();
    }
}