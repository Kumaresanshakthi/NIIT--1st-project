<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
 <title>
 Supplier form</title>
</head>
<body>

<div>

<c:url value="/admin/addsupplier" var="url"></c:url>
	<form:form modelAttribute="supplier" action="${url}" method="post" >
	<table>
	<tr>
	
		<td align="center" colspan="10"><h4>Supplier Details</h4></td>
	
		<c:if test="${!flag}">
			<form:hidden path="supplierId"></form:hidden>
		</c:if>
	</tr>
	<tr>
	<td>Supplier Name</td>
	         <c:if test="${!flag}">
				<td><form:input path="supplierName"></form:input></td>
			</c:if>
			
	</tr>
	<tr>
	<td>Supplier Address</td>
	<c:if test="${!flag}">
				<td><form:input path="supplierAddress"></form:input></td>
    </c:if>
    <tr>
    <td>Supplier Email</td>        <c:if test="${!flag}"><td><form:input path="supplierEmail"></form:input></td></c:if>
    </tr>
    <tr>
    <td>Supplier Mobilenumber</td> <c:if test="${!flag}"><td><form:input path="supplierMobileNumber"></form:input></td></c:if>
	
	</tr>
	<tr>
	<td colspan="2">
		<input type="submit" value="AddSupplier"/>
	</td>
	</tr>

</table>
</form:form>
</div>
<!-- Completed Displaying Table -->


<a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a>
<div>
<a href="<c:url value='/all/getallsupplier'></c:url>">supplier List</a></div>
	
<jsp:include page="Footer.jsp"/>

</body>
</html>
</body>

</html>

