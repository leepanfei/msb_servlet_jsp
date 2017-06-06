<jsp:useBean id="cb" scope="request" class="bean.CounterBean"></jsp:useBean>

<html>
	<body>
		<h3>CounterBean scope="request" Example</h3>
		<b>count:</b> <%= cb.getCount() %>
	</body>
</html>