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
     	String  password="123456";       //����Ϊ�Լ����ݿ������   
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //����JDBC��������   

        String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_dbΪ������ݿ������   
        //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
        //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
        
       

        String filename=request.getParameter("image");
        filename="D:\\webdesign\\3\\"+filename;
         File file = new File(filename); //��ȡ����������ͼƬ��url 
         out.print("ss"+filename);
        
        try {
			
			//���ļ�

			FileInputStream fin = new FileInputStream(file);
			 
			//��һ�����屣������

			ByteBuffer nbf = ByteBuffer.allocate((int) file.length());

			byte[] array = new byte[1024];

			int offset = 0, length = 0;

			//��������

			while ((length = fin.read(array)) > 0) {

				if (length != 1024)

					nbf.put(array, 0, length);

				else

					nbf.put(array);

				offset += length;

			}

		  //�½�һ�����鱣��Ҫд������

			byte[] content = nbf.array();

			//�������ݿ�����

			conn= DriverManager.getConnection(url,user,password);

			//��������

			Statement stmt =conn.createStatement(

					ResultSet.TYPE_SCROLL_INSENSITIVE,

					ResultSet.CONCUR_UPDATABLE);
			
			
			//��ȡ���������
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
				//������ƶ�����Ҫ������
				rs.moveToInsertRow();

				rs.updateString(rowCount, (rowCount+""));
				
				rs.updateBytes(rowCount, content);
				//����
				rs.insertRow();

			}
			/*rs.moveToInsertRow();
			rs.updateString(1, "01");
			rs.updateBytes(2, content);
			//�� insertRow �������� java.sql.ResultSet �ӿ��е� insertRow ����ָ���ġ�
			//���ô˷���ʱ���α����λ�ڲ������ϡ� ���ô˷������α꽫�����ڲ����в��ҽ���������ڲ���ģʽ�¡�
			rs.insertRow();*/

			

 

			rs.close();

//			�ر��ļ�

			fin.close();

			out.println("��ϲ���Ѿ����µļ�¼�ɹ�����ӵ����ݿ��У�");

		} catch (FileNotFoundException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}		

   %> 

 

    </body>

 

</html>

 

 


