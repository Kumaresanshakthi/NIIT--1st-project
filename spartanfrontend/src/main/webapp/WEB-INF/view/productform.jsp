<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<%@ include file="Header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Product Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div>
<!--  p=new Product(), initially all the properties will have default values
	var url="/admin/addproduct"
	 -->
	<c:url value="/admin/addproduct" var="url"></c:url>
	<form:form modelAttribute="product" action="${url }" method="post" enctype="multipart/form-data">
		<table>
		<tr>
<!-- user need not give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td>Enter Product Name
				</td>
				<td><form:input path="productName" placeholder="Productname is mandatory"></form:input>
				<form:errors path="productName" cssStyle="color:red"></form:errors>
				</td>
		       </tr>
			<tr>
			<td>Enter Product Description</td>
			<td><form:textarea path="ProductDescription"></form:textarea></td></tr>
			<form:errors path="ProductDescription" cssStyle="color:red"></form:errors>
			<tr>
			<td>Enter Product Price</td>
			<td><form:input path="ProductPrice"></form:input></td>
			<form:errors path="ProductPrice" cssStyle="color:red"></form:errors>
			</tr>
			<tr>
			<td>Enter Product Size</td>
			<td><form:input path="ProductSize"></form:input></td>
			</tr>
			<form:errors path="ProductSize" cssStyle="color:red"></form:errors>
			<tr>
			<td>Enter Product Quantity</td>
			<td><form:input path="ProductQuantity"></form:input></td>
			</tr>
			<form:errors path="ProductQuantity" cssStyle="color:red"></form:errors>
				<tr>
				<td>Select the Category</td>
			<td><form:select path="Category.CategoryId"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
		    <c:forEach items="${category}" var="c">
		    <form:option value="${c.categoryId }">${c.categoryName }</form:option>
		    </c:forEach>
			</form:select></td>
			</tr>
			<tr>
			<td>Upload image</td><td>
			<form:input path="image" type="file"/>
			</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" value="Add Product"></td>
			</tr>
          </table>
</form:form>
	</div>

</body>
</html>