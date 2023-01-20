package com.he20o.homepage;

public class Homedb {

		
		static public final String
		DB_PACKAGE = "com.mysql.cj.jdbc.Driver";		//mysql
		
		static private String DB_NAME ="home";
		static private String DB_URL_MYSQL = "jdbc:mysql://localhost:3306/"+DB_NAME;		//my sql
		static public String DB_URL = DB_URL_MYSQL;    //DB 바뀌면 여기 바꾸기.
		static public String DB_ID = "root";
		static public String DB_PW = "0000";
		
		/*table들*/
		///게시판///
		public static final String TABLE_HOME_BOARD = "board" ;			//게시판
		
		// 메뉴들 //
		public static final String TABLE_HOME_CREDIT = "credit";		// 결제 
		public static final String TABLE_HOME_GOODS = "goods";			// 굿즈
		public static final String TABLE_HOME_MEMBER = "member";		// 회원가입 
		public static final String TABLE_HOME_TICKET = "ticket";		// 티켓 
		
		

	}

