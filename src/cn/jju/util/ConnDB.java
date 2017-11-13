package cn.jju.util;

import java.sql.Statement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ConnDB {
	public static Connection conn= null;
	public Statement stmt=null;
	public ResultSet rs= null;
	
	private static final String url="jdbc:mysql://127.0.0.1:3306/db_lostandfound";
	private static final  String user="root";
	private static final  String password="123456";
	public ConnDB() {
		
	}
	/**
	 * 通过对数据库驱动的加载实现与数据库之间的连接，返回一个已 连接的对象
	 * @return Connection
	 */
	public static Connection getConnection()throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		if(conn==null){
			return DriverManager.getConnection(url,user,password);
			
		}else{
			return conn;
		}
	}
	/**
	 * 通过对传入的sql语句实现对数据库的查询 ，返回值是查询结果的集合
	 * @param sql
	 * @return ResultSet
	 */
	public ResultSet executeQuery(String sql){
		try {
			conn = getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
		System.err.println(e.getMessage());
		}
		return rs;
	}
	/**
	 * 通过对传入的sql语句实现对数据库的更新操作，返回值是更新的数目
	 * @param sql
	 * @return int
	 */
	
	public int executeUpdate(String sql){
		int result=0;
		try {
			conn = getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeUpdate(sql);
		} catch (Exception e) {
			result=0;
		}
		return result;
	}
	/**
	 * 对Connection  Statement  ResultSet的实例判断是否为空，如果不为空则将其关闭，实现关闭数据库的连接
	 */
	public void close(){
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			} 
		} catch (Exception e) {
		e.printStackTrace(System.err);
		}
	}
}
