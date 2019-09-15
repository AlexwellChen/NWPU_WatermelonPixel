<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>网站后台管理模版</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css" />
	</head>

	<body>
		<div class="page-content-wrap">
			<form class="layui-form" action="">
				<div class="layui-form-item">
					<div class="layui-inline tool-btn">
						<button class="layui-btn layui-btn-small layui-btn-normal go-btn hidden-xs" data-url="../../../activity_module/activity-add.jsp"><i class="layui-icon">&#xe654;</i></button>
						
					</div>
					
				</div>
			</form>
			<div class="layui-form" id="table-list">
				<table class="layui-table" lay-even lay-skin="nob">
					<colgroup>
						<col width="50">
						<col class="hidden-xs" width="50">
						<col class="hidden-xs" width="100">
						<col>
						<col class="hidden-xs" width="200">
						<col width="80">
						<col width="150">
					</colgroup>
					<thead>
						<tr>
							<th>图片名称</th>
						</tr>
					</thead>
				</table>
				
				<% 
      	String  user="root";    
          Connection  conn=null;
          	String  password="cfz990221";       //密码为自己数据库的密码   
             Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

             String  url="jdbc:mysql:"+ "//127.0.0.1:3306/watermelon?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
             //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
             //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
           conn= DriverManager.getConnection(url,user,password);
          Statement statement;
          try {
              statement = conn.createStatement();
              //需要执行的数据库操作语句
              String sql = "select * from activity_detail;";
              //执行数据库操作语句并返回结果
              ResultSet rs = statement.executeQuery(sql);
           

              String name = null;
              
              while(rs.next())
              {
                  name = rs.getString("activityName");
                 %>
                  		<tbody>
								<tr>
									<td><%=name %></td>
									<br>
									<br>
								</tr>	
							</tbody>
       
                 <% 
              }
            
              rs.close();
          } catch (SQLException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          }
     
 %>
				
				
				
			</div>
		</div>
		<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>