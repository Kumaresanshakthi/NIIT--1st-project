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
<title>Category List</title>
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
					<th>category id</th>
					<th>category name</th>
					<th>parent category</th>
				<th>Trash</th>
				
				</tr>
			</thead>
			<tbody>
			<!-- For each object in the list, tr has to be repeated -->
			<!--  items refers to the collection of objects -->
			<!-- var is local variable ,takes objects one by one from the collection -->
			
			<c:forEach var="c" items="${categoryList}">
				<tr>
					<td><a
							href="<c:url value='/all/getcategory/${c.categoryId }'></c:url>">${c.categoryId }</a></td>
							</td>
						<td>${c.categoryName }</td>
							<td>${c.parentCategory }</td>
						
						<%-- <td>${c.categoryid }</td> --%>
						<td>
					
						<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="<c:url value='/admin/deletecategory/${c.categoryId}'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
					</security:authorize>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
<jsp:include page="Footer.jsp"/>

</body>
</html>
					