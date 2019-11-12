package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
//@ServletComponentScan
@MapperScan("com.example.demo.mapper")
public class FirstdemoApplication {
	public static void main(String[] args) {
		SpringApplication.run(FirstdemoApplication.class, args);
	}

}
