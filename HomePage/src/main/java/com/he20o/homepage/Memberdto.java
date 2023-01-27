package com.he20o.homepage;

public class Memberdto {
	
	public String id;
	public String pw;
	public String repw;
	public String name;
	public String email;
	
	
	



	public Memberdto(String id, String pw, String repw, String name, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.repw = repw;
		this.name = name;
		this.email = email;
	}






	public String getId() {
		return id;
	}






	public void setId(String id) {
		this.id = id;
	}






	public String getPw() {
		return pw;
	}






	public void setPw(String pw) {
		this.pw = pw;
	}






	public String getRepw() {
		return repw;
	}






	public void setRepw(String repw) {
		this.repw = repw;
	}






	public String getName() {
		return name;
	}






	public void setName(String name) {
		this.name = name;
	}






	public String getEmail() {
		return email;
	}






	public void setEmail(String email) {
		this.email = email;
	}






	@Override
	public String toString() {
		return "Memberdto [id=" + id + ", pw=" + pw + ", repw=" + repw + ", name=" + name + ", email=" + email + "]";
	}




	
	
	
	
	
}


