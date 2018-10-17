<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp"%> 
 <%@ page isELIgnored="false" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--   -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier List</title>
<script type="text/javascript">
$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,7,-1],[5,7,"All"]],
	    "oSearch" : {
		"sSearch" : searchCondition
		}
	})
})
</script>

</head>
<body>

<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>supplier id</th>
					<th>supplier name</th>
					<th>supplier mobilenumber</th>
					<th>supplier address</th>
					<th>supplier email</th>
				<th>Action</th>
				</tr>
			</thead>
			<tbody>
			
			
			<c:forEach var="s" items="${supplierList}">
				<tr>
					<td><a
							href="<c:url value='/all/getsupplier/${s.supplierId }'></c:url>">${s.supplierId }</a></td>
						
						<td><a
							href="<c:url value='/all/getsupplier/${s.supplierId }'></c:url>">${s.supplierName }</a></td>
						<td>${s.supplierMobileNumber }</td>
						<td>${s.supplierAddress }</td>
						<td>${s.supplierEmail }</td>
						
						<td>
					
						<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="<c:url value='/admin/deletesupplier/${s.supplierId}'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
					</security:authorize>
					</td>
					<%-- 	<td>
					<a href="<c:url value='/all/getsupplier/${s.supplierid}'></c:url>"><span class="glyphicon glyphicon-info-sign"></span></a>
					
					<a href="<c:url value='/admin/getupdateform/${s.supplierid}'></c:url>"><span class="glyphicon glyphicon-pencil"></span></a>
					 
					</td> --%>

				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
<jsp:include page="Footer.jsp"/>

</body>
</html>