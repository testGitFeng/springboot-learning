package com.example.demo.serviceImpl;

import com.example.demo.bean.Role;
import com.example.demo.bean.User;
import com.example.demo.mapper.UserMapper;
import com.example.demo.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    public int deleteByPrimaryKey(Integer id){
        return userMapper.deleteByPrimaryKey(id);
    }

    public int insert(User record){
        return userMapper.insert(record);
    }

    public int insertSelective(User record){
        return userMapper.insertSelective(record);
    }

    public User selectByPrimaryKey(Integer id){
        return userMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(User record){
        return userMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(User record){
        return userMapper.updateByPrimaryKey(record);
    }

    public PageInfo<User> selectAll(int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);
        List<User> userList = userMapper.selectAll();
        PageInfo<User> page = new PageInfo<User>(userList);
        return page;
    }

    public User selectByUsernamePass(String username, String password){
        return userMapper.selectByUsernamePass(username,password);
    }

    public User selectByUsername(String username){
        return userMapper.selectByUsername(username);
    }

    public User validateUser(String username, String password){
        return userMapper.selectByUsernamePass(username, password);
    }

    public void findRoleAndPermissions(User user){

    }

    public List<Role> getRoleListByUserId(int userId){
        return userMapper.selectRoleByUserId(userId);
    }
}
