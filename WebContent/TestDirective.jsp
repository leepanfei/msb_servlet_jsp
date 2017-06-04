<%@page import="java.util.*" %>
<%@page contentType="text/html; charset=gb2312" %>
	
	<!-- @page指示语句的测试 -->
	<!-- 将当前系统时间转变成成我们本地常用的形式输出 -->

	<%= new Date().toLocaleString() %>	
	
	<br><br>
	
	<%
		out.println("你好！");
	%>
	