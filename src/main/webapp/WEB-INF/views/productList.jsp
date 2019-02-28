<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

     <!-- MAIN CONTAINER -->
	  <div class="container">
	  	<div class="page-header">
	  		<h1>All products</h1>
	  		<p>Here you can check all product</p>
	  	</div>
		<table class="table table-striped table-hover">
			<tr class="bg-sucess">
			    <th>Photothumb</th>
				<th>Name</th>
				<th>Category</th>
				<th>Condition</th>
				<th>Price</th>
				<th></th>
			</tr>
			<c:forEach items="${products}" var="product">
			<tr>
			    <td><img alt="Photo" src= "<c:url value="/resources/imgs/${product.productId}.png"/>" width="100px" ></td>
				<td>${product.productName}</td>
				<td>${product.productCategory}</td>
				<td>${product.productCondition}</td>
				<td>${product.productPrice}</td>
				<td><a href="<spring:url value="/product/viewProduct/${product.productId}"/>">
					<span class="glyphicon glyphicon-info-sign"></span></a></td>
			</tr>
			</c:forEach>
	  </table>
		
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>	  
