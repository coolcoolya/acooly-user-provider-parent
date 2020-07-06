/**
 * acooly-user-provider-parent
 * <p>
 * Copyright 2014 Acooly.cn, Inc. All rights reserved.
 *
 * @author 王娅
 * @date 2020-07-06 10:48
 */
package com.yaya.service;

import com.yaya.dto.UserDto;

import java.util.List;

/**
 *
 * @author 王娅
 * @date 2020-07-06 10:48
 */
public interface UserFacade {

    public List<UserDto> getUserDtoByUserName(String userName);
}
