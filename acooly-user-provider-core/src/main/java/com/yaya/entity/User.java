/*
* acooly.cn Inc.
* Copyright (c) 2020 All Rights Reserved.
* create by acooly
* date:2020-07-06
*/
package com.yaya.entity;


import javax.persistence.Entity;
import javax.persistence.Table;

import javax.validation.constraints.*;

import lombok.Getter;
import lombok.Setter;
import com.acooly.core.common.domain.AbstractEntity;
import java.util.Date;

/**
 * tb_user Entity
 *
 * @author acooly
 * @date 2020-07-06 10:34:47
 */
@Entity
@Table(name = "tb_user")
@Getter
@Setter
public class User extends AbstractEntity {

    /**
     * user_name
     */
	@Size(max = 32)
    private String userName;

    /**
     * password
     */
	@Size(max = 32)
    private String password;

    /**
     * name
     */
	@Size(max = 32)
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
