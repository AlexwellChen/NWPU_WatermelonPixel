<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="java.sql.*" %> 

<%@ page import="java.util.*"%> 

<%@ page import="java.text.*"%> 

<%@ page import="java.io.*"%>

<%@ page import="java.nio.*"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

</head>

    <body>

     <%
     	String  user="root";    
     Connection  conn=null;
     	String  password="123456";       //密码为自己数据库的密码   
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

        String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
        //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
        //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
        
       

        String filename=request.getParameter("image");
        filename="D:\\webdesign\\3\\"+filename;
         File file = new File(filename); //获取表单传过来的图片的url 
         out.print("ss"+filename);
        
        try {
			
			//打开文件

			FileInputStream fin = new FileInputStream(file);
			 
			//建一个缓冲保存数据

			ByteBuffer nbf = ByteBuffer.allocate((int) file.length());

			byte[] array = new byte[1024];

			int offset = 0, length = 0;

			//读存数据

			while ((length = fin.read(array)) > 0) {

				if (length != 1024)

					nbf.put(array, 0, length);

				else

					nbf.put(array);

				offset += length;

			}

		  //新建一个数组保存要写的内容

			byte[] content = nbf.array();

			//创建数据库连接

			conn= DriverManager.getConnection(url,user,password);

			//保存数据

			Statement stmt =conn.createStatement(

					ResultSet.TYPE_SCROLL_INSENSITIVE,

					ResultSet.CONCUR_UPDATABLE);
			
			
			//获取表的总行数
			String sqlstr = "select count(filename) totalCount from bindata";

			ResultSet rs = stmt.executeQuery(sqlstr);
			
			int rowCount=0;
			
			if(rs.next()) { 
				  rowCount=rs.getInt("totalCount"); 
			}
			rowCount+=1;
			
	
			sqlstr = "insert into bindata(filename) values(" +(rowCount+"")+ ")";
			out.println((char)(rowCount+48));
			stmt.executeUpdate(sqlstr);
			sqlstr = "select filename,binfile from bindata where filename="+(rowCount+"");
			rs = stmt.executeQuery(sqlstr);

			if (rs.next()) 

			{

				rs.updateBytes(2, content);

				rs.updateRow();

			} else {
				//将光标移动至将要输入行
				rs.moveToInsertRow();

				rs.updateString(rowCount, (rowCount+""));
				
				rs.updateBytes(rowCount, content);
				//输入
				rs.insertRow();

			}
			/*rs.moveToInsertRow();
			rs.updateString(1, "01");
			rs.updateBytes(2, content);
			//此 insertRow 方法是由 java.sql.ResultSet 接口中的 insertRow 方法指定的。
			//调用此方法时，游标必须位于插入行上。 调用此方法后，游标将保持在插入行并且结果集保持在插入模式下。
			rs.insertRow();*/

			

 

			rs.close();

//			关闭文件

			fin.close();

			out.println("恭喜，已经将新的记录成功地添加到数据库中！");

		} catch (FileNotFoundException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}		

   %> 

 

    </body>

 

</html>

 

 


