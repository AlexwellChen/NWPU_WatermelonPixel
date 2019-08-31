<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<title>SELECT 操作</title>
</head>
<body>
 <%
     	String  user="root";    
     Connection  conn=null;
     	String  password="123456";       //密码为自己数据库的密码   
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

        String  url="jdbc:mysql:"+ "//127.0.0.1:3306/RUNOOB?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
        //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
        //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
        
       
       String filename=request.getParameter("image");//获取图片信息
       String file="images/"+filename;
        
        try {
			
			

		
            //建立连接
			conn= DriverManager.getConnection(url,user,password);

			

			Statement sql=conn.createStatement();
			String sql_insert="insert into photoad values("+"'"+file+"'"+")";//插入数据
			System.out.print(sql_insert);
			sql.execute(sql_insert);
			
			

			conn.close();

//			关闭文件

			

			out.println("恭喜，已经将新的记录成功地添加到数据库中！");

			} catch (IOException e) {

			e.printStackTrace();

		}		

   %> 

 

    </body>

 

</html>