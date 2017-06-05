<html>
	<head>
		<title>Forward Example</title>
	</head>
	
	<!-- 最终显示的是forforward.jsp中的内容 -->
	
	<body bgcolor=red>
		Welcome to forward.jsp
		
		<!-- 直接跳转到forforward.jsp,这两个jsp用的是用一个request -->
		<jsp:forward page="forforward.jsp"></jsp:forward>
	</body>
</html>