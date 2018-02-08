package com.niit.DAO;

import java.util.List;

import com.niit.Model.Product;

public interface ProductDAO {

public Product getByProductId(int productid);
	
	public Product getByProductName(String productname);
	
	public List<Product> getBySupplierName(String suppliername);
	
	public void saveOrUpdate(Product product);
	
	public void delete(int product_id);
	
	public List<Product> getByFeatured();
	
}
