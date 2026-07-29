package com.ebazar.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class DaoImpl implements DAOProvider
{
	static Connection con=null;
	@Override
	public boolean login(LoginBean bean) {
		// TODO Auto-generated method stub
		con=DBConnect.connect();
		try {
			con.setAutoCommit(false);
			String sql="select * from Ebazar where username=? and password=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, bean.getUsername());
			pst.setString(2, bean.getPassword());
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				System.out.println("Data fetch");
				System.out.println(rs.getString(1)+" "+rs.getString(2));
			}
			con.commit();
			rs.close();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBConnect.disConnect(con);
		return true;
		
		
	}
	@Override
	public int addProduct(ProductBean bean) 
	{
		int counter=0;
		// TODO Auto-generated method stub
		con=DBConnect.connect();
		try {
			con.setAutoCommit(false);
			String sql="insert into MobileCart values(?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, bean.getModel());
			pst.setInt(2, bean.getPrice());
			counter=pst.executeUpdate();
			if(counter>0)
			{
				System.out.println("1 record added");
			}
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBConnect.disConnect(con);
		return counter ;
		
	}
	@Override
	public HashMap<String, Integer> viewProduct(String cart[]) {
		// TODO Auto-generated method stub
		PreparedStatement pst=null;
		HashMap<String, Integer> map=new HashMap<>();
		con=DBConnect.connect();
		try {
			con.setAutoCommit(false);
			String s1="select * from mobilecart where cat=?";
			for(int i=1;i<cart.length;i++)
			{
				pst=con.prepareStatement(s1);
				pst.setString(1, cart[i]);
			}
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				map.put(rs.getString(1), rs.getInt(2));
			}
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBConnect.disConnect(con);
		return map;
	}

}
