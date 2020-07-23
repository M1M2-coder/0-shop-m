<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!-- Getting the Project Module Path -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- Loading the static resources [css,js,images] -->
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript">
	window.menu = '${title}'
</script>
<title>Online Shopping - ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- READABLE Bootstrap THEME CSS -->
<link href="${css}/READ_BOOTSTRAP_THEME.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
	
		<!-- SECTION ONE: NAV-BAR -->
		<%@include file="./shared/navbar.jsp"%>

		<!--******************* END: NAV-BAR SECTION ******************************-->

		<div class="content">

			<!-- SECTION TWO: Home Page  -->
			<c:if test="${userClickHome == true}">
				<%@include file="./home.jsp"%>
			</c:if>
			<!--******************* END: Home Page SECTION *****************************-->

			<!-- SECTION FOUR: About Us -->
			<c:if test="${userClickAbout}">
				<%@include file="./about.jsp"%>
			</c:if>
			<!--******************* END: About Us SECTION ********************************-->

			<!-- SECTION FIVE: Contact Us -->
			<c:if test="${userClickContact}">
				<%@include file="./contact.jsp"%>
			</c:if>
			<!--******************* END: Contact Us SECTION ********************************-->

		</div>
		
		<!-- SECTION THREE: FOOTER -->
		<%@include file="./shared/footer.jsp"%>

		<!--******************* END: Footer SECTION ********************************-->




		<!-- JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.js"></script>
		<script type="text/javascript" src="${js}/myapp.js"></script>
	</div>
</body>

</html>
