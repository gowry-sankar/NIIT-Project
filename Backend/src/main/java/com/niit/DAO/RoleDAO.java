package com.niit.DAO;

import java.util.List;

import com.niit.Model.Role;

public interface RoleDAO {

public List<Role> list();	
	
	public Role getByUserName(String username);
	
	public Role getByEmail(String email);
	
	public Role getByContact(int contact);
	
	public void saveOrUpdate(Role role);
		
    public void delete(String username);
}
