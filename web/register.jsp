<%@page import="java.sql.*"%>
<%
	String regdata[]={
		request.getParameter("name"),
		request.getParameter("Mobile"),
		request.getParameter("Email"),
		request.getParameter("gender"),
		request.getParameter("city"),
		request.getParameter("choice"),
		
	};
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/house";
	String dbuser="root";
	Connection conn=null;
	PreparedStatement pst=null;
	String supdate="insert into register values(?,?,?,?,?,?)";
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,dbuser,dbuser);
		pst=conn.prepareStatement(supdate);
	for(int i=0;i<regdata.length;i++){
		pst.setString(i+1,regdata[i]);		
		}
		pst.executeUpdate();
		
	
	}catch(Exception e){out.print(e.getMessage());%>
	 <jsp:include page="register.html" />
	 <% }
	
	
%>