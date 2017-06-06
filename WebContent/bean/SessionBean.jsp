<%@page import="bean.CounterBean"%>
<jsp:useBean id="cb" scope="session" class="bean.CounterBean"></jsp:useBean>

<!-- （有效范围在用户整个连接过程中，整个会话阶段均有效）  -->

<%--  // 这一段java代码等同于上面这句JSP语句
	<% 
	bean.CounterBean cb = (bean.CounterBean)session.getAttribute("cb");
	if (null == cb) {
		cb = new bean.CounterBean();
		session.setAttribute("cb", cb);
	}
	%>
--%>

<html>
	<body>
		<h3>CounterBean scope="session" Example</h3>
		<b>Count:</b> <%= cb.getCount() %>
	</body>
</html>