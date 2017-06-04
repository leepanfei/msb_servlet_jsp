<html>
	<head>
		<title>JSP Expressions</title>
	</head>
	
	<!-- 表达式 -->
	
	<body>
		<h2>JSP Expressions </h2>
	</body>
	
	<ul>
		<!-- 获取当前本地时间 -->
		<li>Current Time:<%= new java.util.Date().toLocaleString() %>
		<li>Your HostName:<%= request.getRemoteHost()  %>
		
		<!-- 获取当前页面的Session　ID -->
		<li>Your Session ID:<%= session.getId() %>
		<li>The <code>testParam</code> from parameter:<%=request.getParameter("testParam") %>
	</ul>
</html>