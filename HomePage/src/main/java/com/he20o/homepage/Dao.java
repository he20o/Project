package com.he20o.homepage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Dao {
	
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;

	void connect() {
		try {
			////고정 1
			Class.forName(Homedb.DB_PACKAGE);
			////고정 2
			con = DriverManager.getConnection(Homedb.DB_URL, Homedb.DB_ID, Homedb.DB_PW);			
			////고정 3
			st=con.createStatement();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	void update(String sql) {
		try {
			st.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	void close() {
		try {
			////고정 4
			st.close();
			////고정 5
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
