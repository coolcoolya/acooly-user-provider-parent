/**
 * acooly-user-provider-parent
 * <p>
 * Copyright 2014 Acooly.cn, Inc. All rights reserved.
 *
 * @author 王娅
 * @date 2020-07-06 10:51
 */
package com.yaya.service.impl;

import com.yaya.dao.UserDao;
import com.yaya.dto.UserDto;
import com.yaya.entity.User;
import com.yaya.service.UserFacade;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author 王娅
 * @date 2020-07-06 10:51
 */
@Slf4j
@Service
public class UserFacadeImpl implements UserFacade {
    @Autowired
    private UserDao userDao;
    @Override
    public List<UserDto> getUserDtoByUserName(String userName) {
        Example example = new Example(User.class);
        example.createCriteria().andLike("userName",userName);
        List<User> userList = userDao.selectByExample(example);
        return userList.stream().map(x->{
            UserDto dto = new UserDto();
            BeanUtils.copyProperties(x,dto);
            return dto;
        }).collect(Collectors.toList());
    }
}
