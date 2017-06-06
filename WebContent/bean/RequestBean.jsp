<jsp:useBean id="cb" scope="request" class="bean.CounterBean"></jsp:useBean>

<%--
	bean.CounterBean cb = request.getAttribute("cb");
	if (null == cb) {
		cb = new bean.CounterBean();
		request.setAttribute("cb", cb);
	}
--%>

<html>
	<body>
		<h3>CounterBean scope="request" Example</h3>
		<% cb.setCount(100); %>
		
		<jsp:forward page="RequestBean2.jsp"></jsp:forward> <!-- 结果为101 -->
		
		<%-- 
			<% 
				response.sendRedirect("RequestBean2.jsp");  // 结果为1
			%>
		 --%>
		
	</body>
</html>