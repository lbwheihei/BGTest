package com.binggoling.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * anther : binggoling
 * date : 2017/9/24
 * time : 15:17
 * description : 系统参数控制器
 */

@Controller
@RequestMapping("/sys")
public class SystemController {

    @RequestMapping("/index")
    public String index(){
        return "system/index";
    }

    @RequestMapping("/login")
    public String login() {
        return "system/login";
    }

    @RequestMapping("/register")
    public String register() {
        return "system/register";
    }

    @RequestMapping("/page/404")
    public String error404() {
        return "error/404";
    }

    @RequestMapping("/page/500")
    public String error500() {
        return "error/500";
    }

}
