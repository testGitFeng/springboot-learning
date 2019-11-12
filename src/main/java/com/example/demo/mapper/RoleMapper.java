package com.example.demo.mapper;

import com.example.demo.bean.Permission;
import com.example.demo.bean.Role;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    @Select("select * from permission where id in (select permission_id from role_permission where role_id = #{roleId})")
    List<Permission> selectPermissionIdByRoleId(@Param("roleId") int roleId);
}