<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="com.mysql.cj.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%				

	String driverName="com.mysql.cj.jdbc.Driver"; //数据库信息
	String userName="root"; 
	String userPasswd="cfz990221"; 
	String dbName="test"; 
	String tableName="student"; 
	String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
	Connection conn=DriverManager.getConnection(url); 
	Statement stmt = conn.createStatement(); 
	String sql="SELECT * FROM "+tableName; 
				ResultSet rs = stmt.executeQuery(sql); 
				while(rs.next()) { 
					out.print(rs.getString(1)+" ");
					out.print("|"); 
					out.print(rs.getString(2)+" "); 
					out.print("|"); 
					out.print(rs.getString(3)+" "); 
					out.print("|"); 
					out.print(rs.getString(4));
					out.print("<br>"); 
					} 
				
	
%>