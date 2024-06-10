package com.mypro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mypro.db.DBConnection;
import com.mypro.dto.MenuItem;

public class Add 
{
	public int Additem(MenuItem dto) {
		int x=0;
		try {
			Connection conn=DBConnection.getConn();
			System.out.println(conn);
			PreparedStatement ps=conn.prepareStatement("INSERT INTO `menu`(`name`, `description`, `category`, `price`, `image`) VALUES (?,?,?,?,?)");
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getDisc());
			ps.setString(3, dto.getCat());
			ps.setInt(4, dto.getPrice());
			if(dto.getImg()!=null) {
				ps.setBlob(5, dto.getImg());
			}
			x=ps.executeUpdate();
			conn.close();
		} catch (Exception tt) {
			System.out.println(tt);
		}
		return x;
	}

}
