package com.yjh.system.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Select;

import com.yjh.system.bean.SysUser;

public interface SysUserMapper {

	@Select("SELECT * FROM sys_user WHERE pkey = #{pkey}")
	SysUser loadSysUser(int pkey);
}
