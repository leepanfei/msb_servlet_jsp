<%@page contentType="text/html;charset=gb2312" %>

<html>
	<head>
		<title>Multiply</title>
	</head>
	
	<body bgcolor="#FFFFFF">
		<center>
			<h1>
				<%
					try {
						float multiplicand = Float.parseFloat(request.getParameter("value1"));
						float multiplicator = Float.parseFloat(request.getParameter("value2"));
						double result = multiplicand * multiplicator;
						out.println(multiplicand + "*" + multiplicator + "=" + result);
					} catch (Exception e) {
						out.println("���Ϸ��ĳ����򱻳���");
					}
				%>
			</h1>
		</center>
	</body>
</html>