<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>西瓜教程</title>
    <meta name="description" content=""/>
    <link href="https://fonts.googleapis.com/css?family=Arimo:400,600,700" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link href="styles/main.css" rel="stylesheet">
  </head>
  <body id="top">
    <div class="page">
      <header>
        <div class="pp-header">
          <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container"><a href="index.jsp"><img src="../images/logo/PA@small.png" class="navbar-brand"></a><a class="navbar-brand" href="index.jsp">西瓜像素</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item active"><a class="nav-link" href="index.jsp">主页</a>
                  </li>
                  <li class="nav-item"><a class="nav-link" href="about.jsp">前期教程</a>
                  </li>
                  <li class="nav-item"><a class="nav-link" href="blog.jsp">后期制作</a>
                  </li>
				  <li class="nav-item"><a class="nav-link" href="../index.jsp">返回</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <div class="page-content">
        <div class="container">
			<div style="text-align: center;margin: 0 auto;height: auto;background-color:aliceblue ">
	</div>
<div class="container px-0">
  <div class="pp-gallery">
    <div class="card-columns">

<% 
      	String  user="root";    
          Connection  conn=null;
          	String  password="cfz990221";       //密码为自己数据库的密码   
             Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

             String  url="jdbc:mysql:"+ "//127.0.0.1:3306/test?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
             //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
             //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
           conn= DriverManager.getConnection(url,user,password);
          Statement statement;
          try {
              statement = conn.createStatement();
              //需要执行的数据库操作语句
              String sql_1 = "select * from activity_detail_about";
              String sql_2 = "select * from activity_detail_blog";
              //执行数据库操作语句并返回结果
              ResultSet rs_1 = statement.executeQuery(sql_1);
              ResultSet rs_2 = statement.executeQuery(sql_2);
           

              String name_1 = null;
              String category_1 = null;
              String content_1=null;
              String important_word_1=null;
              String description_1=null;
              String writer_1 = null;
              String Image_1=null;
              
              String name_2 = null;
              String category_2 = null;
              String content_2=null;
              String important_word_2=null;
              String description_2=null;
              String writer_2 = null;
              String Image_2=null;
              
              while(rs_1.next())
              {
                  name_1 = rs_1.getString("pagename");
                  Image_1 = rs_1.getString("photoname");
                  content_1=rs_1.getString("page");
                  important_word_1=rs_1.getString("important_word");
                  description_1 = rs_1.getString("description");
                  writer_1 = rs_1.getString("builder");
                  
                 %>
                  <div class="card new_card" ><a href="about/about4.jsp?name=<%=name_1%>">
          <figure class="pp-effect"><img  type="submit" class="img-fluid" src='<%=Image_1 %>'alt="Food"/>
            <figcaption >
              <div ><%=name_1 %></div>
              <p style="width: 90%;padding-left: 20%; padding-top: 5%;"><%=description_1%><br><%=writer_1 %></p>
            </figcaption>
          </figure></a></div>
       
                 <% 
              }
            
              rs_1.close();
              rs_2.close();
          } catch (SQLException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          }
     
 %>
     
    </div>
  </div>
</div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
			</div></div></div></div>
  </body>
</html>