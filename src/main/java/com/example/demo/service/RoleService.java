package com.example.demo.service;

import com.example.demo.bean.Permission;

import java.util.List;

public interface RoleService {
    public List<Permission> getPermissionByRoleId(int roleId);
}
