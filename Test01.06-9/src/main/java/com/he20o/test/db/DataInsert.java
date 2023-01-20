package com.he20o.test.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataInsert {
	public static String loginId = "";

	Connection con = null;
	Statement st = null;
	ResultSet rs = null;

	public static String name = "";

	public void insertTicket(String game[], String pgame[]) {
		String g = "";
		String pg = "";
		for (String s : game) {
			g = g + s + ",";
		}
		for (String s : pgame) {
			pg = pg + s + ",";
		}
		int n = g.length();
		String x = g.substring(0, n - 1);
		System.out.println(x);

		int m = pg.length();
		String y = pg.substring(0, m - 1);
		System.out.println(y);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home", "root", "0000");
			st = con.createStatement();

			String sq = "insert into ticket(game,pgame) values('" + x + "','" + y + "')";
			st.executeUpdate(sq);
			con.close();
		} catch (Exception e) {
		}

	}

	public void insertGood(String arr[], String category) {
		String item = "";
		
		for(String s: arr) {
			item = item + s + ", ";
		}
		
		int nt = item.length();
		String a = item.substring(0, nt - 1);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home", "root", "0000");
			st = con.createStatement();

			String sq = "insert into goods(" + category +  ") value('" + a + "');";
			st.executeUpdate(sq);
			con.close();
		} catch (Exception e) {
		}
	}
	public void insertGoods(String acc[], String collection[], String heritage[], String kids[], String man[],
			String woman[]) {
		String ac = "";
		String co = "";
		String he = "";
		String ki = "";
		String ma = "";
		String wo = "";

		for (String st1 : acc) {
			ac = ac + st1 + ",";
		}
		for (String st1 : collection) {
			co = co + st1 + ",";
		}
		for (String st1 : heritage) {
			he = he + st1 + ",";
		}
		for (String st1 : kids) {
			ki = ki + st1 + ",";
		}
		for (String st1 : man) {
			ma = ma + st1 + ",";
		}
		for (String st1 : woman) {
			wo = wo + st1 + ",";
		}

		int nta = ac.length();
		String a = ac.substring(0, nta - 1);
		System.out.println(a);
		int ntb = co.length();
		String b = co.substring(0, ntb - 1);
		System.out.println(b);
		int ntc = he.length();
		String c = he.substring(0, ntc - 1);
		System.out.println(c);
		int ntd = ki.length();
		String d = ki.substring(0, ntd - 1);
		System.out.println(d);
		int nte = ma.length();
		String ee = ma.substring(0, nte - 1);
		System.out.println(ee);
		int ntf = wo.length();
		String f = wo.substring(0, ntf - 1);
		System.out.println(f);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home", "root", "0000");
			st = con.createStatement();

			String sq = "insert into goods(acc,collection,heritage,kids,man,woman) values('" + a + "','" + b + "','" + c
					+ "','" + d + "','" + ee + "','" + f + " ')";
			st.executeUpdate(sq);
			con.close();
		} catch (Exception e) {
		}

	}

} // ****datainsert//
