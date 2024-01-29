<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fee Details</title>
</head>
<body>
<%@ page import="javax.swing.*" %>
<%@ page import="java.sql.*"%>
<%
	String btnval=request.getParameter("b1");
	if(btnval.equalsIgnoreCase("save"))
	{
		String t1=request.getParameter("t1");
		String t2=request.getParameter("t2");
		String t3=request.getParameter("t3");
		String t4=request.getParameter("t4");
		String t5=request.getParameter("t5");
		String t6=request.getParameter("t6");
		String t7=request.getParameter("t7");
		String t8=request.getParameter("t8");
		String t9=request.getParameter("t9");
		String t10=request.getParameter("t10");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrf","hrf");
			PreparedStatement psmt=conn.prepareStatement("insert into fee values(?,?,?,?,?,?,?,?,?,?)");
			psmt.setString(1,t1);
			psmt.setString(2,t2);
			psmt.setString(3,t3);
			psmt.setString(4,t4);
			psmt.setString(5,t5);
			psmt.setString(6,t6);
			psmt.setString(7,t7);
			psmt.setString(8,t8);
			psmt.setString(9,t9);
			psmt.setString(10,t10);
			psmt.executeQuery();
			out.println("<script>alert('Record save')</script>");
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}	
	}//End of save
	
	if(btnval.equalsIgnoreCase("delete"))
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrf","hrf");
			PreparedStatement psmt=conn.prepareStatement("delete from fee");
			psmt.executeQuery();
			out.println("<script>alert('Record Deleted')</script>");
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}
	}//End of delete
	
	if(btnval.equalsIgnoreCase("update"))
	{
		String t1=request.getParameter("t1");	
		String t2=request.getParameter("t2");	
		String t3=request.getParameter("t3");	
		String t4=request.getParameter("t4");	
		String t5=request.getParameter("t5");	
		String t6=request.getParameter("t6");	
		String t7=request.getParameter("t7");	
		String t8=request.getParameter("t8");	
		String t9=request.getParameter("t9");	
		String t10=request.getParameter("t10");	
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrf","hrf");
			PreparedStatement psmt=conn.prepareStatement("update fee set date1=?,session1=?,semester=?,admission=?,security=?,library=?,late=?,progid=?,reapire=? where id=?");
			psmt.setString(1,t2);
			psmt.setString(2,t3);
			psmt.setString(3,t4);
			psmt.setString(4,t5);
			psmt.setString(5,t6);
			psmt.setString(6,t7);
			psmt.setString(7,t8);
			psmt.setString(8,t9);
			psmt.setString(9,t10);
			psmt.setString(10,t1);
			psmt.executeQuery();
			out.println("<script>alert('Record Update')</script>");
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}
	}

%>
</body>
</html>