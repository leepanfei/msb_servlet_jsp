<%@page language="java" %>
<%@page contentType="text/html;charset=gb2312" %>

<%
	//��Compute.htmlҳ�������Ҫ���м�������������ù���
	String v1 = request.getParameter("value1");
	String v2 = request.getParameter("value2");
%>

<%
	if ("division".equals(request.getParameter("compute"))) { %>
	 <!--���г������㣬����������v1��v2�ȴ���divide.jsp�����Ǳ߱������У�Ȼ��ѽ���õ������ʾ����-->
		<jsp:include page="divide.jsp" flush="true">
			<jsp:param value="<%=v1 %>" name="v1"/>
			<jsp:param value="<%=v2 %>" name="v2"/>
		</jsp:include>
<%  } else { %>
	<!--ֱ�Ӱ�multiply.jsp�ù���������ҳ��һ�����ִ��-->
	<%@include file="multiply.jsp" %>
<%  } %>