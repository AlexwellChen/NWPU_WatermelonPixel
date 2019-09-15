<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UploadInfo</title>
</head>
<body>
	<%
		String  user="root";    
	  	Connection  conn=null;
	  	String  password="cfz990221";       //密码为自己数据库的密码   
	    Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   
		String table = new String(request.getParameter("name_href").getBytes("ISO-8859-1"),"UTF-8");
	    String  url="jdbc:mysql:"+ "//127.0.0.1:3306/baoming?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
	     //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
	     //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
	   	conn= DriverManager.getConnection(url,user,password);
	 	String name =new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	    String number =new String(request.getParameter("number").getBytes("ISO-8859-1"),"UTF-8");
	    String department =new String(request.getParameter("department").getBytes("ISO-8859-1"),"UTF-8");
	    String email =new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
	    Statement statement = conn.createStatement();          
	    String sql = "INSERT INTO "+table+" VALUES ("+"'"+name+"'"+","+"'"+number+"'"+","+"'"+department+"'"+","+"'"+email+"'"+")";	
	  	statement.execute(sql);
	  	conn.close();
	    out.println("success");
	%>
</body>
</html>