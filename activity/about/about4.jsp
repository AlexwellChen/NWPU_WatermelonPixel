<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>活动详情</title>
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
             
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                 <ul class="navbar-nav ml-auto">
                  <li class="nav-item"><a class="nav-link" href="../picture.jsp">活动页</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>
        <% 
        	String table_name=null;
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
        	  String name1 = request.getParameter("name");
              statement = conn.createStatement();
              //需要执行的数据库操作语句
              String sql = "select * from huodong_detail";
              //执行数据库操作语句并返回结果
              ResultSet rs = statement.executeQuery(sql);
           
              
              String name=null;
              String category = null;
              String content=null;
              String important_word=null;
              String description=null;
              String writer = null;
              String Image=null;
              while(rs.next())
              {   
            	  
                  name = rs.getString("pagename");
                  if(name.equals(name1)){
                  Image = rs.getString("photoname");
                  content=rs.getString("page");
                  important_word=rs.getString("important_word");
                  description = rs.getString("description");
                  writer = rs.getString("builder");
            	  table_name = rs.getString("database_name");
                  
                  %>
             
      <div class="page-content">
        <div class="container">
		<div class="pp-about container px-0 pp-section">
		  <div class="row mb-2">
		    <div class="col-md-9">
		      <p class="text-muted" style="text-indent:2em"><%=important_word%></p>
			  <p class="text-muted"><%=content %>
		    </div>
		       
		  </div><img class="img-fluid pp-about-img" src="../../<%=Image %>" alt="About Image" hegiht="80%"><!-- 修改部分，可以在教程内部动态改变 -->
  <% 
                  } }
         	 
              
              rs.close();
          } catch (SQLException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          }
     
 %>

	<br>
	<br>
						
						<form action="../about/checkin.jsp" method="post" onsubmit="return check()" style="text-align:center">
							姓名：<input id="name" type="text" name="name"/><br><br>
							学号：<input id="number" type="text" name="number" /><br><br>
							学院：<input id="department" type="text" name="department"><br><br>
							手机：<input id="email" type="text" name="email"><br><br>
							<input id="name_href" type="hidden" name="name_href" value="<%=table_name %>">
							<input type="submit" value="提交" class="btn btn-primary" style="margin-left: 50px"/>
						</form>
						
	<br>
	<br>
	
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
    <script src="scripts/main.js"></script>
    <script type="text/javascript">
	function check(){
		if($("#name").val() == ""){
			alert('输入姓名');
			return false;
		}
		if($("#number").val() == ""){
			alert('输入学号');
			return false;
		}
		if($("#department").val() == ""){
			alert('输入学院');
			return false;
		}
		if($("#email").val() == ""){
			alert('输入邮箱');
			return false;
		}
		alert('提交成功');
		return true;
	}
	</script>
  </body>
</html>