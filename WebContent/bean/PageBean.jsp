<jsp:useBean id="cb" scope="page" class="bean.CounterBean"></jsp:useBean>

<!-- （仅涵盖使用JavaBean的页面）  -->

<html>
	<body>
		<h3>CounterBean scope="page" Expamle</h3>
		<!-- 下面两句效果一样 -->
		<b>count:</b> <%= cb.getCount()%>
		<jsp:getProperty property="count" name="cb"/>
	</body>
</html>