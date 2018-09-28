<%@page import="java.sql.*"%>
<%
	
		String ur=request.getParameter("user");
		String ps=request.getParameter("pass");
		String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/house";
	String dbuser="root";
	Connection conn=null;
	PreparedStatement pst=null;
	String supdate="select user,pass from admin where user=?&&pass=?";
	// String supdate="insert into register values(?,?,?,?,?,?)";
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,dbuser,dbuser);
		pst=conn.prepareStatement(supdate);
		pst.setString(1,ur);
		pst.setString(2,ps);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			
			response.sendRedirect("fdetails.html");
			return;
		}
	
	}
	catch(Exception e){out.print(e.getMessage());
	%>
	
	<%}%>
	