<%@page contentType="text/html;charset=gb2312" %>

<html>
	<head>
		<title>Divide</title>
	</head>
	
	<body bgcolor="#FFFFFF">
		<center>
			<h1>
				<% 
				  try{
                      float divident = Float.parseFloat(request.getParameter("v1"));
                      float divisor = Float.parseFloat(request.getParameter("v2"));
                      double result = divident/divisor;
                      %>
                      <%= result%>
                      <%
                  } catch(Exception e) {
                      out.println("���Ϸ��ĳ����򱻳���");
                  }
				%>
			</h1>
		</center>
	</body>
</html>