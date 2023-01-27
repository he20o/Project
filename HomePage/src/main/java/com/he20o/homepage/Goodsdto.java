package com.he20o.homepage;

public class Goodsdto {
	
	public String[] num;
	public String[]	acc;
	public String[]	collection;
	public String[] heritage;
	public String[] kids;
	public String[] man;
	public String[] woman;
	
	public String ac;
	public String co;
	public String he;
	public String ki;
	public String ma;
	public String wo;
	
	
	
	
	
	public Goodsdto(String ac, String co, String he, String ki, String ma, String wo) {
		super();
		this.ac = ac;
		this.co = co;
		this.he = he;
		this.ki = ki;
		this.ma = ma;
		this.wo = wo;
	}





	public Goodsdto(String[] acc, String[] collection, String[] heritage, String[] kids, String[] man, String[] woman) {
		super();
		this.acc = acc;
		this.collection = collection;
		this.heritage = heritage;
		this.kids = kids;
		this.man = man;
		this.woman = woman;
	}
	
	
	
	
	
}
