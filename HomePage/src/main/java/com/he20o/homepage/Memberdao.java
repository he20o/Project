package com.he20o.homepage;

public class Memberdao extends Dao{

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
						rs.getString("re_pw"),
						rs.getString("user_name"),
						rs.getString("email"));
			}
			close();
		} catch(Exception e) {
			
		}
		
		return dto;
}
	// 회원가입 //
	public void join(Memberdto m) {
		connect();
		String sql = String.format("insert into %s (id,pw,re_pw,user_name,email) values ('%s','%s','%s','%s','%s')", Homedb.TABLE_HOME_MEMBER,m.id,m.pw,m.repw,m.name,m.email);
		update(sql);
		close();
	}
	
	public boolean is(String obj, String input) {
		boolean is = false;
		String sql = String.format("select count(*) from %s where %s='%s';", Homedb.TABLE_HOME_MEMBER,obj,input);
		try {
			connect();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				int count = rs.getInt("count(*)");
				if(count>0) {
					is = true;
				}
			}
			close();
		}catch (Exception e) {
		}
		return is; 
	}
	
	public boolean isId(String id) {
		return is ("id",id);
	}
	
	public boolean isEmail(String email) {
		return is ("email",email);
	}
	
	public boolean checkPw(String pw, String repw) {
		Memberdto dto = mem(pw);
		boolean correct = false;
		if (pw.equals(dto.getPw())) {
			correct = true;
		}
		return correct;
		
	}
	
}
 