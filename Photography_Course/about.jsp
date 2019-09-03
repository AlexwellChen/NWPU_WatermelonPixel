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
    <title>前期教程</title>
    <meta name="description" content=""/>
    <link href="https://fonts.googleapis.com/css?family=Arimo:400,600,700" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link href="styles/main.css" rel="stylesheet">
<!--	<link href="styles/about_blog.css" rel="stylesheet">-->
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
                  <li class="nav-item"><a class="nav-link" href="../index.jsp">首页</a>
                  </li>
                  <li class="nav-item active"><a class="nav-link" href="about.jsp">前期教程</a>
                  </li>
                  <li class="nav-item"><a class="nav-link" href="blog.jsp">后期教程</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <div class="page-content">
        <div class="container">
<div class="container pp-section">

      <h1 style="margin-bottom: 5%;" class="h3" align="center" > 前期教程</h1>

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
              String sql = "select * from activity_detail_about";
              //执行数据库操作语句并返回结果
              ResultSet rs = statement.executeQuery(sql);
           

              String name = null;
              String category = null;
              String content=null;
              String important_word=null;
              String description=null;
              String writer = null;
              String Image=null;
              
              while(rs.next())
              {
                  name = rs.getString("pagename");
                  Image = rs.getString("photoname");
                  content=rs.getString("page");
                  important_word=rs.getString("important_word");
                  description = rs.getString("description");
                  writer = rs.getString("builder");
                  
                 %>
                  <div class="card new_card" ><a href="about/about4.jsp?name=<%=name%>">
          <figure class="pp-effect"><img  type="submit" class="img-fluid" src='<%=Image %>'alt="Food"/>
            <figcaption >
              <div ><%=name %></div>
              <p style="width: 90%;padding-left: 20%; padding-top: 5%;"><%=description%><br><%=writer %></p>
            </figcaption>
          </figure></a></div>
       
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
</div>
<div class="pp-section"></div></div>
      </div>
      <footer class="pp-footer">
        <div class="container py-5">
          <div class="row text-center">
            <div class="col-md-12"><a class="pp-facebook btn btn-link" href="#"><i class="fa fa-facebook fa-2x " aria-hidden="true"></i></a><a class="pp-twitter btn btn-link " href="#"><i class="fa fa-twitter fa-2x " aria-hidden="true"></i></a><a class="pp-google-plus btn btn-link" href="#"><i class="fa fa-google-plus fa-2x" aria-hidden="true"></i></a><a class="pp-instagram btn btn-link" href="#"><i class="fa fa-instagram fa-2x " aria-hidden="true"></i></a></div>
            <div class="col-md-12">
              
            </div>
          </div>
        </div>
      </footer>
    </div>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
  </body>
</html>