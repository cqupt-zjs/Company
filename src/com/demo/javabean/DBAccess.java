package com.demo.javabean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBAccess {

	public static String drv = "org.gjt.mm.mysql.Driver";
	public static String url = "jdbc:mysql://localhost:3306/demo";
	//?useUnicode=true&characterEncoding=UTF8
	public static String usr = "root";
	public static String pwd = "hyb";

	private Connection conn = null;
	private Statement stm = null;
	private ResultSet rs = null;

	public boolean createConn() {
		boolean b = false;
		try {
			Class.forName(drv).newInstance();
			conn = DriverManager.getConnection(url, usr, pwd);
			b = true;
		} catch (SQLException e) {
		} catch (ClassNotFoundException e) {
		} catch (InstantiationException e) {
		} catch (IllegalAccessException e) {
		}
		return b;
	}

	public boolean update(String sql) {
		boolean b = false;
		try {
			stm = conn.createStatement();
			stm.execute(sql);
			b = true;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return b;
	}

	public void query(String sql) {
		try {
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
		} catch (Exception e) {
		}
	}
	
	public boolean next() {
		boolean b = false;
		try {
			if(rs.next())b = true;
		} catch (Exception e) {
		}
		return b;		
	}
	
	public String getValue(String field) {
		String value = "";
		try {
			if(rs!=null){
				//String valuet = rs.getString(field);
				//value=new String(valuet.getBytes("ISO-8859-1"),"gb2312"); 
				value = rs.getString(field);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (value == null) value = "";
		return value;
	}

	public void closeConn() {
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
		}
	}

	public void closeStm() {
		try {
			if (stm != null)
				stm.close();
		} catch (SQLException e) {
		}
	}

	public void closeRs() {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
		}
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public Statement getStm() {
		return stm;
	}

	public void setStm(Statement stm) {
		this.stm = stm;
	}
}
