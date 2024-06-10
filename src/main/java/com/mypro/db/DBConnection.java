package com.mypro.db;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection implements  DBConfig
{
	public static Connection getConn() {
		Connection con = null;
		try {
			Class.forName(Driver);
			con=DriverManager.getConnection(Conn,unm,pw);
			System.out.println(con);
		}catch (Exception ee) {
			System.out.println(ee);
		}
		
		return con;
		
	}

}
