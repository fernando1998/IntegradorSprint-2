package com.integrador.service;

import java.util.List;

import com.integrador.model.UserInfo;

public interface UserService {

	 public	List<UserInfo> list();
	 
	 public UserInfo findUserbyUsername(String username);
	 
	 public void update(String username, String password);
	 
	 public void add(String username, String password);
	 
	 public boolean userExists(String username);
}
