<%@page language="java" %>
<%@page contentType="text/html;charset=gb2312" %>

<%
	//将Compute.html页面输入的要进行计算的两个变量拿过来
	String v1 = request.getParameter("value1");
	String v2 = request.getParameter("value2");
%>

<%
	if ("division".equals(request.getParameter("compute"))) { %>
	 <!--进行除法计算，把两个参数v1和v2先传到divide.jsp，再那边编译运行，然后把结果拿到这边显示出来-->
		<jsp:include page="divide.jsp" flush="true">
			<jsp:param value="<%=v1 %>" name="v1"/>
			<jsp:param value="<%=v2 %>" name="v2"/>
		</jsp:include>
<%  } else { %>
	<!--直接把multiply.jsp拿过来，跟本页面一起编译执行-->
	<%@include file="multiply.jsp" %>
<%  } %>