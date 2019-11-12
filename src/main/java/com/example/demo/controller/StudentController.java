package com.example.demo.controller;

import com.example.demo.bean.StudentBean;
import com.example.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="student")
public class StudentController {

    @Autowired
    StudentService studentService;

    @RequestMapping(value="/{id}", method = RequestMethod.GET)
    public String getStudentById(@PathVariable("id") int id){
        StudentBean studentBean = studentService.getStudentById(id);
        System.out.println("name =======" + studentBean.getName());
        return "index";
    }
}
