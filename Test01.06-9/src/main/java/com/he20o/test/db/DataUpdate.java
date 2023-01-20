package com.he20o.test.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataUpdate {
	public static String loginId = "";

	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	
	public static String name = "";

	public void dbExecuteUpdate(String query) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home", "root", "0000");
			st = con.createStatement();
			st.executeUpdate(query);
			con.close();
		} catch (Exception e) {
		}
	}

	public void joinMember(String id, String pw,String name) {
		String query = "insert into member(id, pw, user_name) values('" + id + "', '" + pw + "', '"+name+"' )";
		dbExecuteUpdate(query);
	}

	public String updateTopMenu() {
		String loginInfo = "";
		if (loginId.equals("")) {
			loginInfo = "로그인해주세요.";
		} 
		return loginInfo;
	}
	
	public static String pay ="";
	
	public void credit(String bank, String user, String cardnum,String date,String instalment) {
		String query = "insert into credit(bank, user, card_num, date, instalment) values('"+bank+"','"+user+"', '"+cardnum+"', '"+date+"','"+instalment+"' )";
		dbExecuteUpdate(query);
	}
	

}
