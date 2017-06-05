<html>
    <head>
        <title>forforward1.jsp</title>
    </head>
    
    <body bgcolor=blue>
        Welcome<br>
        Here is forforward1.jsp<br>
        <%= request.getParameter("name")%>
        <%= request.getParameter("oldName")%>
        <%= request.getParameter("roles")%>
        <%= request.getParameter("address")%>
    </body>
</html> 