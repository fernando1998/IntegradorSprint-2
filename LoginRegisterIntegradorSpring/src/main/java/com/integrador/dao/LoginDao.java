package com.integrador.dao;

import java.util.List;

import com.integrador.model.UserInfo;

public interface LoginDao {
	
	UserInfo findUserInfo(String username);
	
	List<String> getUserRoles(String username);
	

}
