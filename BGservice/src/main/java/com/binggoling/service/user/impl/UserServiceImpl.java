package com.binggoling.service.user.impl;

import com.binggoling.dao.user.IUserDao;
import com.binggoling.model.user.UserVO;
import com.binggoling.service.user.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by heihei on 2017/8/19.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Override
    public void addUser(UserVO user) throws Exception {
        userDao.addUser(user);
    }
}
