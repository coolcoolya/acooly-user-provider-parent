package com.yaya.dto; /**
 * acooly-user-provider-parent
 * <p>
 * Copyright 2014 Acooly.cn, Inc. All rights reserved.
 *
 * @author 王娅
 * @date 2020-07-06 10:48
 */

import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author 王娅
 * @date 2020-07-06 10:48
 */
@Slf4j
@Getter
@Setter
public class UserDto implements Serializable {
    /**
     * user_name
     */
    private String userName;

    /**
     * password
     */
    private String password;

    /**
     * name
     */
    private String name;

    /**
     * age
     */
    private Integer age;

    /**
     * sex
     */
    private Integer sex;

    /**
     * birthday
     */
    private Date birthday;

    /**
     * created
     */
    private Date created;

    /**
     * updated
     */
    private Date updated;
}
