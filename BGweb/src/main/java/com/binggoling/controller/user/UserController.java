package com.binggoling.controller.user;

import com.binggoling.model.user.UserVO;
import com.binggoling.service.user.IUserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by heihei on 2017/8/19.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    private final Log logger = LogFactory.getLog(UserController.class);

    @Autowired
    private IUserService userService;

    @RequestMapping("/login")
    public String login() {
        UserVO user = new UserVO();
        user.setUserId("2");
        user.setUserName("test1");
        user.setPassword("123456");

        logger.debug(" logger");
        logger.error("~~info~~");
        logger.info("测试日志");

        try {
            userService.addUser(user);
        } catch (Exception e) {
            e.getMessage();
        }
        return "user/login";
    }
}
