<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fees Payment</title>
</head>
<body>
<%@ page import="javax.swing.*" %>
<%@ page import="java.sql.*" %>
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
		String t11=request.getParameter("t11");
		String t12=request.getParameter("t12");
		String t13=request.getParameter("t13");
		String t14=request.getParameter("t14");
		String t15=request.getParameter("t15");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrf","hrf");
			PreparedStatement psmt=conn.prepareStatement("insert into fees_payment values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
			psmt.setString(11,t11);
			psmt.setString(12,t12);
			psmt.setString(13,t13);
			psmt.setString(14,t14);
			psmt.setString(15,t15);
			psmt.executeQuery();
			out.println("<script>alert('Record Saved..')</script>");
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}
	}// End of Save
	
	if(btnval.equalsIgnoreCase("delete"))
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrf","hrf");
			PreparedStatement psmt=conn.prepareStatement("delete from fees_payment");
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
		String t11=request.getParameter("t11");
		String t12=request.getParameter("t12");
		String t13=request.getParameter("t13");
		String t14=request.getParameter("t14");
		String t15=request.getParameter("t15");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrf","hrf");
			PreparedStatement psmt=conn.prepareStatement("update fees_payment set regno=?,issue_dt=?,confirm=?,paid_by=?,paid_for=?,amt=?,balance=?,semester=?,total_amt=?,bank_name=?,receipt=?,challan=?,session1=?,status=? where id=?");
			psmt.setString(1,t2);
			psmt.setString(2,t3);	
			psmt.setString(3,t4);	
			psmt.setString(4,t5);	
			psmt.setString(5,t6);	
			psmt.setString(6,t7);	
			psmt.setString(7,t8);	
			psmt.setString(8,t9);	
			psmt.setString(9,t10);	
			psmt.setString(10,t11);	
			psmt.setString(11,t12);	
			psmt.setString(12,t13);	
			psmt.setString(13,t14);	
			psmt.setString(14,t15);	
			psmt.setString(15,t1);
			psmt.executeQuery();
			out.println("<script>alert('Record Update')</script>");
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}	
	}// End of update
%>
</body>
</html>