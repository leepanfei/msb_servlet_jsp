<jsp:useBean id="cb" scope="session" class="bean.CounterBean" />
    
<html>
    <body>
        <h3>CounterBean scope="session" Example</h3>
        <b>count:</b> <%= cb.getCount()%>
    </body>
</html>