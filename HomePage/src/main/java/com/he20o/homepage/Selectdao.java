package com.he20o.homepage;

import java.sql.DriverManager;

public class Selectdao extends Dao{
	

	
	// *티켓* - 경기 선택 db넘기기//
	public void ticket(Ticketdto t) {
		String g = "";
		String pg = "";
		for (String s : t.game) {
			g = g + s + ",";
		}
		for (String s : t.pgame) {
			pg = pg + s + ",";
		}
		int n = g.length();
		String x = g.substring(0, n - 1);
		System.out.println(x);

		int m = pg.length();
		String y = pg.substring(0, m - 1);
		System.out.println(y);
		connect();
		try {
			String sql = String.format("insert into %s (game,pgame) values('%s','%s')", Homedb.TABLE_HOME_TICKET,x,y);
			st.executeUpdate(sql);
			
			close();
		}catch (Exception e) {
			
		}
	}
	
	
	// *티켓* - 넘긴 db 가져오기// 
	public Ticketdto result(String no) {
		String sql = String.format("select * from %s where num='%s'", Homedb.TABLE_HOME_TICKET,no);
		Ticketdto dto = null;
		try {
			connect();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dto = new Ticketdto(	rs.getString("game"),
						rs.getString("pgame"));
			}
			close();
		} catch(Exception e) {
			
		}
		return dto;
		}
	
	
	// *굿즈* - 경기 선택 db넘기기//
	public void goods(Goodsdto g) {
		String ac = "";
		String co = "";
		String he = "";
		String ki = "";
		String ma = "";
		String wo = "";

		for (String st1 : g.acc) {
			ac = ac + st1 + ",";
		}
		for (String st1 : g.collection) {
			co = co + st1 + ",";
		}
		for (String st1 : g.heritage) {
			he = he + st1 + ",";
		}
		for (String st1 : g.kids) {
			ki = ki + st1 + ",";
		}
		for (String st1 : g.man) {
			ma = ma + st1 + ",";
		}
		for (String st1 : g.woman) {
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

		connect();
		try {
			String sql = String.format("insert into %s(acc,collection,heritage,kids,man,woman) values('%s','%s','%s','%s','%s','%s')", Homedb.TABLE_HOME_GOODS,a,b,c,d,ee,f);
			st.executeUpdate(sql);
			close();
		} catch (Exception e) {
		}

	}
	
	// *굿즈* - 넘긴 db 가져오기// 
	
	public Goodsdto basket(String no) {
		String sql = String.format("select * from %s where num='%s'", Homedb.TABLE_HOME_GOODS,no);
		Goodsdto dto = null;
		try {
			connect();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dto = new Goodsdto(	rs.getString("acc"),
						rs.getString("collection"),
						rs.getString("heritage"),
						rs.getString("kids"),
						rs.getString("man"),
						rs.getString("woman"));
			}
			close();
		} catch(Exception e) {
			
		}
		return dto;
		}

	
	
	}