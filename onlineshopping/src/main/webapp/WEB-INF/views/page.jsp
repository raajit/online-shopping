<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="css1" value="/resources/vendor/bootstrap/css" />
<spring:url var="js" value="/resources/vendor/jquery" />
<spring:url var="js1" value="/resources/vendor/bootstrap/js" />
<spring:url var="images" value="/resources/images" />


 <c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>    


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title}</title>
    
    <script>
        window.menu = '${title}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css1}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap Readable Theme -->
    <link href="${css1}/bootstrap-readable-theme.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>

   <div class="wrapper">

		<!-- Navigation -->
		<%@ include file="./shared/navbar.jsp"%>

		<!-- Page Content -->


		<div class="content">

			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@ include file="home.jsp"%>
			</c:if>


			<!-- Load only when user clicks About Us -->
			<c:if test="${userClickAbout == true }">
				<%@ include file="about.jsp"%>
			</c:if>


			<!-- Load only when user clicks Contact Us -->
			<c:if test="${userClickContact == true }">
				<%@ include file="contact.jsp"%>
			</c:if>

		</div>


		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>


		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js1}/bootstrap.bundle.min.js"></script>

		<!-- Self Made Javascript -->
		<script src="${js}/myapp.js"></script>


	</div>
    
    

  </body>

</html>
