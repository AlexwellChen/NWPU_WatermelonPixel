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
    <title>Part3</title>
    <meta name="description" content=""/>
    <link href="https://fonts.googleapis.com/css?family=Arimo:400,600,700" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link href="../styles/main.css" rel="stylesheet">
  </head>
  <body id="top">
    <div class="page">
      <header>
        <div class="pp-header">
          <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container"><a href="index.jsp"><img src="../images/favicon.png"></a><a class="navbar-brand" href="index.jsp">西瓜摄影前期教程</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                 <ul class="navbar-nav ml-auto">
                  <li class="nav-item"><a class="nav-link" href="../index.jsp">主页</a>
                  </li>
                  <li class="nav-item active"><a class="nav-link" href="../about.jsp">前期教程</a>
                  </li>
                  <li class="nav-item"><a class="nav-link" href="../blog.jsp">后期教程</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>
        <% 
      	String  user="root";    
          Connection  conn=null;
          	String  password="123456";       //密码为自己数据库的密码   
             Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

             String  url="jdbc:mysql:"+ "//127.0.0.1:3306/watermelon?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
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
              int mark;
              int i =4;
              mark = rs.getInt("mark");
              while(rs.next())
              {   
            	  if(i==mark){
                  name = rs.getString("pagename");
                  Image = rs.getString("photoname");
                  content=rs.getString("page");
                  important_word=rs.getString("important_word");
                  description = rs.getString("description");
                  writer = rs.getString("builder");
            	  i++;
                  }
            	 
                  %>
                  <%=mark %>
      <div class="page-content">
        <div class="container">
<div class="pp-about container px-0 pp-section">
  <div class="row mb-2">
    <div class="col-md-9">
		<h1 style="text-align:left">Part<%=i%></h1>
      
      <p class="text-muted" style="text-indent:2em"><%=important_word%></p>
	  <p class="text-muted"><%=content %>
    </div>
       <% }
            	 
            
              rs.close();
          } catch (SQLException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          }
     
 %>

  </div><img class="img-fluid pp-about-img" src="../images/112.jpg" alt="About Image">
	<br>
	<br>
	<br>
	<br>
	<p align="right"><a href="about1.jsp" style="font-size: 30px"><strong><em>go to Part1</em></strong></a></p>
  <div class="row py-5">
    <div class="col-md-9 col-sm-12">
      
    </div>
  </div>
 
  <div class="h3 py-5 mt-5">Our Team</div>
  <div class="row pp-team">
    <div class="col-md-3 col-sm-12"><img class="img-fluid" src="../images/face-1.jpg" alt="Face"/>
      <div class="h5">Ashley Ford</div>
      <p>Photographer</p>
    </div>
    <div class="col-md-3 col-sm-12"><img class="img-fluid" src="../images/face-2.jpg" alt="Face"/>
      <div class="h5">Royal Anwar</div>
      <p>Photographer</p>
    </div>
    <div class="col-md-3 col-sm-12"><img class="img-fluid" src="../images/face-3.jpg" alt="Face"/>
      <div class="h5">Jina Sara</div>
      <p>Photographer</p>
    </div>
    <div class="col-md-3 col-sm-12"><img class="img-fluid" src="../images/face-4.jpg" alt="Face"/>
      <div class="h5">Adelle Charles</div>
      <p>Photographer</p>
    </div>
  </div>
</div>
<div class="pp-section"></div></div>
      </div>
      <footer class="pp-footer">       
        <div class="container py-5">
          <div class="row text-center">
			<p style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', 'serif';font-size:25px;text-align:center">share to</p>  
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
    <script src="scripts/main.js"></script>
  </body>
</html>