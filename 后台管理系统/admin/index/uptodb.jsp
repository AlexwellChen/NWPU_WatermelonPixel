<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="com.alibaba.druid.filter.config.ConfigTools" %>
 <bean id="dataSource" class="com.alibaba.druid.pool.DruidDataSource"
     init-method="init" destroy-method="close">
     <property name="filters" value="config" />
     <property name="connectionProperties" value="config.file=file:///home/admin/druid-pool.properties" />
 </bean>
<%  
//加密数据库密码

%>



<html>
<head>
<title>SELECT 操作</title>
</head>
<body>
	<% 
	
	   String[] formvalue=new String[7];
	   String a="";
	   int num=0;
	   int formvalue_num=0;
	   File photo;
	   int maxFileSize = 100000 * 1024;
	   int maxMemSize = 100000 * 1024;
	   ServletContext context = pageContext.getServletContext();
	   //获取web.xml中photo-upload的路径
	   String filePath = context.getInitParameter("photo-upload");

	   // 验证上传内容了类型
	   String contentType = request.getContentType();
	   if ((contentType.indexOf("multipart/form-data") >= 0)) {

	      DiskFileItemFactory factory = new DiskFileItemFactory();
	      // 设置内存中存储文件的最大值
	      factory.setSizeThreshold(maxMemSize);
	      // 本地存储的数据大于 maxMemSize.
	      factory.setRepository(new File("C:\\temp"));

	      // 创建一个新的文件上传处理程序
	      ServletFileUpload upload = new ServletFileUpload(factory);
	      // 设置最大上传的文件大小
	      upload.setSizeMax( maxFileSize );
	      try{ 
	         // 解析获取的文件
	         List fileItems = upload.parseRequest(request);

	         // 处理上传的文件
	         Iterator i = fileItems.iterator();

	         out.println("<html>");
	         out.println("<head>");
	         out.println("<title>JSP File upload</title>");  
	         out.println("</head>");
	         out.println("<body>");
	         while ( i.hasNext () ) 
	         {
	            FileItem fi = (FileItem)i.next();
	            if ( !fi.isFormField () )	
	            {
	            // 获取上传文件的参数
	            String fieldName = fi.getFieldName();
	            String fileName = fi.getName();
	            boolean isInMemory = fi.isInMemory();
	            long sizeInBytes = fi.getSize();
	            // 写入文件
	            if(num==0){
	            if( fileName.lastIndexOf("\\") >= 0 ){
	            photo= new File( filePath , 
	            fileName.substring(fileName.lastIndexOf("\\"))) ;
	            }else{
	            photo= new File( filePath ,
	            fileName.substring(fileName.lastIndexOf("\\")+1)) ;
	            }
	            fi.write( photo) ;}
	            out.println("Uploaded Filename: " + filePath + 
	            fileName + "<br>");
	            filePath+=fileName;
	            a+=fileName;
	            num++;
	            }else{
	   			 
	                //该name值空间中的value值
	                formvalue[formvalue_num++]=fi.getString("UTF-8");
	                out.print(fi.getString("UTF-8"));
	            }	
	         }
	         out.println("</body>");
	         out.println("</html>");
	         
	      }catch(Exception ex) {
	         System.out.println(ex);
	      }
	   }else{
	      out.println("<html>");
	      out.println("<head>");
	      out.println("<title>Servlet upload</title>");  
	      out.println("</head>");
	      out.println("<body>");
	      out.println("<p>No photo uploaded</p>"); 
	      out.println("</body>");
	      out.println("</html>");
	      
	   }

		String photoPath = "images\\\\"+a;
		
		

		
	
		String user = "root";
		Connection conn_1 = null;
		Connection conn_2 = null;
		String password = "cfz990221"; //密码为自己数据库的密码   
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

		String url = "jdbc:mysql:"
				+ "//127.0.0.1:3306/test?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   

		String url_2 = "jdbc:mysql:"
				+ "//127.0.0.1:3306/baoming?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; 
		
		try {
			//建立连接
			conn_1 = DriverManager.getConnection(url, user, password);

			Statement sql = conn_1.createStatement();
			if (formvalue[1].equals("lecture")) {
				String sql_insert = "insert into huodong_detail values(" + "'" + formvalue[0] + "'" + ","+ "'" + formvalue[1] + "'" + "," + "'"
						+ photoPath + "'" + "," + "'" + formvalue[2] + "'" + "," + "'" + formvalue[3] + "'" + "," + "'"
						+ formvalue[4] + "'" + "," + "'" + formvalue[5] + "'" + "," + "'" + formvalue[6] + "'"+")";
				System.out.print(sql_insert);
				sql.execute(sql_insert);
				conn_1.close();

			}
			if (formvalue[1].equals("outside")) {
				String sql_insert = "insert into huodong_detail values(" + "'" + formvalue[0] + "'" + ","+ "'" + formvalue[1] + "'" + "," + "'"
						+ photoPath + "'" + "," + "'" + formvalue[2] + "'" + "," + "'" + formvalue[3] + "'" + "," + "'"
						+ formvalue[4] + "'" + "," + "'" + formvalue[5] + "'" +"," + "'" + formvalue[6] + "'"+")";
				System.out.print(sql_insert);
				sql.execute(sql_insert);
				conn_1.close();

			}
			conn_2 = DriverManager.getConnection(url_2, user, password);
			Statement sql_huodong = conn_2.createStatement();
			String sql_set_up = "create table "+formvalue[6]+" ("
					+"name varchar(20) not null,"
					+"number varchar(20) not null,"
					+"department varchar(30) not null,"
					+"email varchar(30) not null);";
			System.out.print(sql_set_up);	
			sql_huodong.execute(sql_set_up);
			conn_2.close();

			//		关闭文件
			out.println("恭喜，已经将新的记录成功地添加到数据库中！");

		} catch (IOException e) {

			e.printStackTrace();

		}
	%>



</body>



</html>