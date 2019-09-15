<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%				

	String driverName="com.mysql.cj.jdbc.Driver"; //数据库信息
	String userName="root"; 
	String userPasswd="cfz990221"; 
	String dbName="baoming"; 
	String tableName=request.getParameter("tablename"); 
	String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
	Connection conn=DriverManager.getConnection(url); 
	Statement stmt = conn.createStatement(); 
	String sql="SELECT * FROM "+tableName; 
				ResultSet rs = stmt.executeQuery(sql); 
				while(rs.next()) { 
					out.print(rs.getString(1)+" ");
					out.print(" | "); 
					out.print(rs.getString(2)+" "); 
					out.print("| "); 
					out.print(rs.getString(3)+" "); 
					out.print("| "); 
					out.print(rs.getString(4)+" ");
					out.print("| "); 
					out.print(rs.getString(5));
					out.print("<br>"); 
					out.print("<br>");
					} 
				
	
%>