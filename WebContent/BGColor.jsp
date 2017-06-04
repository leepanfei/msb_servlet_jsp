<html>
	<head>
		<title>Color Testing</title>
	</head>


	<!-- HTML注释（客户端可以看见） -->

	<%-- JSP注释（客户端看不见）--%>

	<%
	//注释2

	/* 注释3*/

	String bgColor = request.getParameter("bgColor");
	boolean hasColor;
	if (null != bgColor) {
		hasColor = true;
	} else {
		hasColor = false;
		bgColor = "white";
	}
	%>

	<!-- 显示背景色 -->
	<body bgcolor="<%= bgColor%>">
		<h2 align="center">Color Testing</h2>
	
	<%
		if (hasColor) {
			out.println("You supplied a backgroud color of " + bgColor + ".");
		} else {
			out.println("Use Default backgroud color of white");
		}
	%>
	</body>

</html>
