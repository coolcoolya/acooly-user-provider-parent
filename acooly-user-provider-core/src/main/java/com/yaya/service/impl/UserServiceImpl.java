/*
 * acooly.cn Inc.
 * Copyright (c) 2020 All Rights Reserved.
 * create by acooly
 * date:2020-07-06
 */
package com.yaya.service.impl;

import com.yaya.service.UserService;
import org.springframework.stereotype.Service;

import com.acooly.core.common.service.EntityServiceImpl;
import com.yaya.dao.UserDao;
import com.yaya.entity.User;

/**
 * tb_user Service实现
 *
 * @author acooly
 * @date 2020-07-06 10:34:47
 */
@Service("userService")
public class UserServiceImpl extends EntityServiceImpl<User, UserDao> implements UserService {

}
