package com.he20o.homepage;

public class Selectdao extends Dao{
	
	public Memberdto mem(String id) {
		String sql = String.format("select * from %s where id='%s'", Homedb.TABLE_HOME_MEMBER,id);
		Memberdto dto =null;
		try {
			connect();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dto = new Memberdto(
						rs.getString("id"),
						rs.getString("pw"),
						rs.getString("user_name"));
			}
			close();
		} catch(Exception e) {
			
		}
		
		return dto;
}
	// 회원가입 //
	public void join(Memberdto m) {
		connect();
		String sql = String.format("insert into %s (id,pw,user_name) values ('%s','%s','%s')", Homedb.TABLE_HOME_MEMBER,m.id,m.pw,m.name);
		update(sql);
		close();
	}
	
	
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
	
	
	
}