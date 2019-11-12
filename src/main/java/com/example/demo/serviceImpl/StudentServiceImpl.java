package com.example.demo.serviceImpl;

import com.example.demo.bean.StudentBean;
import com.example.demo.mapper.StudentMapper;
import com.example.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentMapper studentMapper;

    public StudentBean getStudentById(int id){
        return studentMapper.getStudentById(id);
    }
}
