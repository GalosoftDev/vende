<%@ include file="/WEB-INF/views/templates/header.jsp" %>

     <!-- MAIN CONTAINER -->
	  <div class="container">
	  	<div class="page-header">
	  		<h1>Detalle de tu producto</h1>
	  		<p>Informacion en detalle de tus productos</p>
	  	</div>
	  	
	  	<div class="container">
	  		<div class="row" ng-app="cartApp">
	  		
	  		   <div class="col-md-5">
	  		   	  <img alt="Photo" src= "<c:url value="/resources/imgs/${product.productId}.png"/>" width="100%">
	  		   </div>
	  		   
	  		   <div class="col-md-5">
	  		   		<h3>Product Name:${product.productName}</h3>
	  		   		<p>Description: ${product.productDescription}</p>
	  		   		<p>Manufacturer: ${product.productManufacturer}</p>
	  		   		<p><b>Price:${product.productPrice}</b></p>
	  		   		<br/>
	  		   		
	  		   		
						<c:set var="role" scope="page" value="${param.role}"/>
						<c:set var="url" scope="page" value="/product/productList"/>
						<c:if test="${role=='admin'}">
							<c:set var="url" scope="page" value="/product/productInventory"/>
						</c:if>
						
						<p ng-controller="cartCtrl">
						    <a href="#" ng-click="testCart()" class="btn btn-warning">Test Angular</a>
							<a href="<c:url value="${url}"/>" class="btn btn-primary">Back</a>
							<a href="#" ng-click="addToCart('${product.productId}')" class="btn btn-success">Order Now</a>
							<a href= "<spring:url value="/customer/cart" />" class="btn btn-default" >View Cart</a>
						</p> 
	  		   </div>
	
	  		</div>
	  	</div>
		
		
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>	