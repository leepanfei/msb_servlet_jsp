<%@page import="bean.*" %>

<%--

	<%
		CounterBean cb = new CounterBean();
	%>

	<font color = "red" size = "5">
		<%= cb.getCount() %> // 将bean中存储的值拿出来
	</font>

--%>

<jsp:useBean id = "cb" class = "bean.CounterBean">
</jsp:useBean>

<!-- 往bean中存值 -->
<jsp:setProperty name = "cb" property = "count" value = "25" />
<%-- 等同于cb.setCount(25) --%>

<!-- 往bean中取值 -->
<jsp:getProperty name = "cb" property = "count" />
<%-- 等同于cb.getCount() --%>