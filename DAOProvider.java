package com.ebazar.model;

import java.util.ArrayList;
import java.util.HashMap;

public interface DAOProvider
{
	public boolean login(LoginBean bean);
	public int addProduct(ProductBean bean);
	//public HashMap<String,Integer> viewCart(String cart[]);
	HashMap<String, Integer> viewProduct(String[] cart);
}
