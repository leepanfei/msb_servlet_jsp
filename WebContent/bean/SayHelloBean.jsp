<%@page language="java" import="bean.HelloBean" %>
<%@page contentType="text/html;charset=gb2312" %>

<%--�Ƚ���������request�е��ַ������ʽ���ó�gbk����ȡ����--%>
<%--request.setCharacterEncoding("gbk"); --%>

<jsp:useBean id="hello" class="bean.HelloBean" scope="request">

 	<%--ͨ��*�������������Ժ��������֮��Ĺ�����struts�д�������--%>
	<jsp:setProperty name="hello" property="*"/>	
	
</jsp:useBean>

<html>
	<head>
		<title>HelloBean</title>
		<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
	</head>
	
	<body bgcolor="#FFFFFF">
		<p>&nbsp;</p>
		<p align="center">
			<font size="4">��ӭ
				<font color="#0000FF">
					<b>
						<%--ת��(�ս�������)����hello������name���Ե�ֵ��ISO8859_1�����ʽ���ֽ������ó�����ת����gbk��ʽ---%>
						<%= new String(hello.getName().getBytes("ISO8859_1"),"gbk")%>
					</b>
				</font>
				<%--ת��(�ս�������)����hello������sex���Ե�ֵ��ISO8859_1�����ʽ���ֽ������ó�����ת����gbk��ʽ---%>
                <%= new String(hello.getSex().getBytes("ISO8859_1"),"gbk")%>
			</font>
		</p>
		<jsp:getProperty name="hello" property="name" />
        <jsp:getProperty name="hello" property="sex" />
	</body>
</html>

<!-- ����2��ת�뷽ʽЧ����ͬ -->