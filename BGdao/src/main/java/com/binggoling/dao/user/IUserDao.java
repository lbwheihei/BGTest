package com.binggoling.dao.user;

import com.binggoling.model.user.UserVO;
import org.apache.ibatis.annotations.Param;

/**
 * Created by heihei on 2017/8/19.
 */
public interface IUserDao {

    void addUser(@Param("user")UserVO user);


}