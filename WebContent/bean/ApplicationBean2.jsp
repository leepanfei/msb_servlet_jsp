<jsp:useBean id="counterBean" scope="application" class="bean.CounterBean" />
    
<html>
    <body>
        <h3>CounterBean scope="application" Example</h3>
        <b>count:</b> <%= counterBean.getCount()%>
    </body>
</html> 