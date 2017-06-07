<html>
	<head>
		<title>Using jsp:setProperty</title>
	</head>
	
	<body>
		<table border = 5 align = "center">
			<tr><th class = "title">
				Using jsp:setProperty
		</table>
	
		<jsp:useBean id="entry" class="bean.SaleEntry"></jsp:useBean>

		<jsp:setProperty name="entry" property="itemID" value='<%= request.getParameter("itemID") %>' />

		<jsp:setProperty name="entry" property="numItems" param="numItems" />

		<jsp:setProperty name="entry" property="discount" param="discount" />

		<br>
		<table align="center" border=1>
			<tr class="colored">
				<th>Item ID
				<th>Unit Price
				<th>Number Ordered
				<th>Total Price
			<tr align="right">
				<td><jsp:getProperty property="itemID" name="entry" />
				<td>$<jsp:getProperty property="itemCost" name="entry" />
				<td><jsp:getProperty property="numItems" name="entry" />
				<td>$<jsp:getProperty property="totalCost" name="entry" />
		</table>

	</body>
</html>
