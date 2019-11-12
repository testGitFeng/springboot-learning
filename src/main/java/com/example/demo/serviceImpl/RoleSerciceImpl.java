package com.example.demo.serviceImpl;

import com.example.demo.bean.Permission;
import com.example.demo.mapper.RoleMapper;
import com.example.demo.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleSerciceImpl implements RoleService {

    @Autowired
    RoleMapper roleMapper;

    public List<Permission> getPermissionByRoleId(int roleId){
        return roleMapper.selectPermissionIdByRoleId(roleId);
    }
}
