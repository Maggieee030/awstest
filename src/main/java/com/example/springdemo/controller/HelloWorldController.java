package com.example.springdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: wanmeiyu
 * @Date: 2025/2/28
 **/
@RestController
@RequestMapping("/")
public class HelloWorldController {
    @GetMapping("/hello")
    public String hello() {
        return "Hello World!";
    }
}
