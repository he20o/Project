package com.he20o.test.db;


public class DataGetInfo {
	DataSelect ds = new DataSelect();

	public int getCount(String table, String where) { 
		int count = 0;
		count = ds.dbExecuteQueryInt("count(*)", table, where);
		return count;

}
}