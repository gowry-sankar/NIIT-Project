package com.niit.DAO;

import java.util.List;

import com.niit.Model.User;

public interface UserDAO {

	public List<User> list();
	
	public User getByUserId(int userid);
	
	public User getByUserName(String username);		
	
	public User getByEmail(String email);
	
	public boolean isAllReadyRegister(String email, boolean b);
	
	public void saveOrUpdate(User user);
		
	public void delete(int UserId);
}

