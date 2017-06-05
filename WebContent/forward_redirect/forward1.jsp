<html>
    <head>
        <title>Forward Example</title>
    </head>
    
    <body bgcolor=red>
     	Welcome to forward1.jsp
     	<jsp:forward page="forforward1.jsp" >
     		<jsp:param name="name" value="m" />
     		<jsp:param name="oldName" value='<%= request.getParameter("name") %>' />
     		<jsp:param name="roles" value="manager" />
     	</jsp:forward>
    </body>
</html> 

<!-- 
	测试结果：
	访问http://localhost:8888/test/forward/forward1.jsp?name=yyg&address=34527144231
	结果：URL没变
	Welcome
	Here is forforward1.jsp
	m yyg manager 34527144231 
 -->