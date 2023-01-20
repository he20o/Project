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
	
	public void join(Memberdto m) {
		connect();
		String sql = String.format("insert into %s (id,pw,user_name) values ('%s','%s','%s')", Homedb.TABLE_HOME_MEMBER,m.id,m.pw,m.name);
		update(sql);
		close();
	}
}