package com.yaya.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author qiubo
 */
@Controller
public class DemoController {
    @RequestMapping("/hello")
    @ResponseBody
    public String demo() {
        return "hello world";
    }
}
