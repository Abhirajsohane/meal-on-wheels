<%@page import="javafx.beans.binding.IntegerExpression"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.sql.*" %>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<% 
String id=request.getParameter("prepared");
Class.forName("com.mysql.jdbc.Driver");   
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","12345");
PreparedStatement ps=con.prepareStatement("update orderp set status=? where oid=?");
ps.setString(1,"On the way");
ps.setString(2,id);
int x=0;
x=ps.executeUpdate();
if(x!=0)
{
response.sendRedirect("completed_orders.jsp");	
}
else
{
out.println("Something went wrong");	
}

%>