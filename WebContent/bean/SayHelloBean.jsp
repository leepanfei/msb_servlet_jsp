<%@page language="java" import="bean.HelloBean" %>
<%@page contentType="text/html;charset=gb2312" %>

<%--先将传过来的request中的字符编码格式设置成gbk，再取内容--%>
<%--request.setCharacterEncoding("gbk"); --%>

<jsp:useBean id="hello" class="bean.HelloBean" scope="request">

 	<%--通过*来设置所有属性和输入参数之间的关联，struts中大量运用--%>
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
			<font size="4">欢迎
				<font color="#0000FF">
					<b>
						<%--转码(终结解决方案)：将hello对象中name属性的值用ISO8859_1编码格式以字节数组拿出，再转化成gbk格式---%>
						<%= new String(hello.getName().getBytes("ISO8859_1"),"gbk")%>
					</b>
				</font>
				<%--转码(终结解决方案)：将hello对象中sex属性的值用ISO8859_1编码格式以字节数组拿出，再转化成gbk格式---%>
                <%= new String(hello.getSex().getBytes("ISO8859_1"),"gbk")%>
			</font>
		</p>
		<jsp:getProperty name="hello" property="name" />
        <jsp:getProperty name="hello" property="sex" />
	</body>
</html>

<!-- 上面2种转码方式效果相同 -->