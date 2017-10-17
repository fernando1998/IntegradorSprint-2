package com.integrador.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.integrador.dao.UserDao;
import com.integrador.model.UserInfo;

@Repository
public class UserDaoImpl implements UserDao{
	
	NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public List<UserInfo> list() {
		String sql="SELECT username FROM users;";
		
		List<UserInfo> list = namedParameterJdbcTemplate.query(sql, getSqlParameterSource(null,null), new UserMapper());
		
		return list;
	}
	
	private SqlParameterSource getSqlParameterSource(String username,String password) {
		MapSqlParameterSource parameterSource=new MapSqlParameterSource();
		
			if(username != null) {
				parameterSource.addValue("username", username);
			}
			if(password != null) {
				parameterSource.addValue("password", password);
			}
			
		return parameterSource;
	}

	private static final class UserMapper implements RowMapper<UserInfo>{

		public UserInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
			UserInfo user=new UserInfo();
			user.setUsername(rs.getString("username"));
			return user;
		}	
	}
	public UserInfo findUserbyUsername(String username) {
		
		String sql="SELECT username FROM users where username = :username";
		
		List<UserInfo> list = namedParameterJdbcTemplate.query(sql, getSqlParameterSource(username,null), new UserMapper());
		
		return list.get(0);
	}

	public void update(String username, String password) {
		
		String sql="update users set password = :password where username = :username";
		
		namedParameterJdbcTemplate.update(sql, getSqlParameterSource(username,password));		
	}

	public void add(String username, String password) {
		//insert in table users
		String sql="insert into users(username,password) values( :username, :password)"; 
		
		namedParameterJdbcTemplate.update(sql, getSqlParameterSource(username,password));
		
		//insert in table roles
		 sql="insert into user_roles(username,role) values(:username,'ROLE_USER')";
		 namedParameterJdbcTemplate.update(sql, getSqlParameterSource(username,password));
	}

	public boolean userExists(String username) {
		String sql="select * from users where username= :username";
		List<UserInfo> list=namedParameterJdbcTemplate.query(sql, getSqlParameterSource(username,null), new UserMapper());
	
		if(list.size() > 0) {
			return true;
		}
		return false;
		
	}

}
