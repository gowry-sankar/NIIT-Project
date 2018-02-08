package com.niit.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.RoleDAO;
import com.niit.DAO.UserDAO;
import com.niit.Model.Category;
import com.niit.Model.Role;
import com.niit.Model.User;

public class Test {



	public static void main (String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		CategoryDAO categoryDAO=(CategoryDAO) context.getBean("CategoryDAO");
		UserDAO userDAO = (UserDAO) context.getBean("UserDAO");
		RoleDAO roleDAO = (RoleDAO) context.getBean("RoleDAO");
		
		Category category = (Category) context.getBean("category");
		User user = (User) context.getBean("user");
		Role role = (Role) context.getBean("role");
		
		
		category.setCategoryName("Dslr Cameras");
		
		categoryDAO.saveOrUpdate(category);
		
		
		user.setUsername("Deena");
		user.setEmail("deena@gmail.com");
		user.setPassword("deena");
		
		user.setContact("9876598989");
		user.setAddress("Kittampalayam");

		role.setUsername("sanjeev");
		role.setEmail("sanju@gmail.com");
		role.setContact("987654545");
		
		user.setRole(role);
		role.setUser(user);
		
		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
		
	}
}
