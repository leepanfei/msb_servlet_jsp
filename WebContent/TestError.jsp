<%@page errorPage="ErrorPage.jsp" %>

<!-- 如果本页面出错，则跳转到ErrorPage.jsp页面 -->

<% 
String str = "123abc";
int i = Integer.parseInt(str); // error
out.println("str=" + str + ", i=" + i);
%>