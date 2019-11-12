package com.example.demo.service;

import com.example.demo.bean.Role;
import com.example.demo.bean.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface UserService {
    public int deleteByPrimaryKey(Integer id);

    public int insert(User record);

    public int insertSelective(User record);

    public User selectByPrimaryKey(Integer id);

    public int updateByPrimaryKeySelective(User record);

    public int updateByPrimaryKey(User record);

    public PageInfo<User> selectAll(int pageNum, int pageSize);

    public User selectByUsernamePass(String username, String password);

    public User selectByUsername(String username);

    public User validateUser(String username, String password);

    public void findRoleAndPermissions(User user);

    public List<Role> getRoleListByUserId(int userId);
}
