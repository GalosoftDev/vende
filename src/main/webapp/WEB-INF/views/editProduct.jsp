<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

     <!-- MAIN CONTAINER -->
	  <div class="container">
	  	<div class="page-header">
	  		<h1>Edit Product</h1>
	  		<p>Please fill all fields for update products</p>
	  	</div>
	  	
	  	<form:form action="${pageContext.request.contextPath}/admin/product/editProduct" 
	  	           commandName="product" method="post" enctype="multipart/form-data">
	  	           
	  	        <form:hidden path="productId" value="${product.productId}"/>   
	  	           
		  		<div class="form-group">
		  		  <label forName="name">Name</label>
		  		  <form:input path="productName" id="name" class="form-control" value="${product.productName}"/>
		  		</div>
	  		
	  		    <div class="form-group">
					<label for="productDescription">Description</label>
					<form:textarea path="productDescription" id="productDescription" class="form-control" 
					               value="${product.productDescription}"/>
				</div>
				
				<div class="form-group">
		  		  <label forName="manufacturer">Manufacturer</label>
		  		  <form:input path="productManufacturer" id="productManufacturer" class="form-control" value="${product.productManufacturer}"/>
		  		</div>
				
				<div class="form-group">
					<label for="productCondition">Condition</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="productCondition" value="new"/>  New</label> 
				    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="productCondition" value="used"/>  Used</label> 
				</div>
				
				<div class="form-group">
					<label for="productCategory">Category</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="shoes"/>  Shoes</label> 
				    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="watches"/>  Watches</label> 
				    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="cloth"/>  Cloth</label>
				</div>
				
				<div class="form-group">
					<label for="productStatus">Status</label>
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="productStatus" value="active"/>  Active</label> 
				    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="productStatus" value="no-active"/>  No active</label> 
				</div>
				
				<div class="form-group">
					<label for="productPrice">Price</label>
					<form:input path="productPrice" id="productPrice" class="form-control" value="${product.productPrice}"/>
				</div>
				
				<div class="form-group">
					<label for="unitsInStock">Units</label>
					<form:input path="unitsInStock" id="unitsInStock" class="form-control" value="${product.unitsInStock}"/>
				</div>
				
				<div class="form-group">
					<label for="productImage" class="control-label">Choose Image</label>
					<form:input path="productImage" id="productImage" type="file" class="form-control" />
				</div>
				
		
				<br>
				<input type="submit" value="Submit" class="btn btn-primary">
				<a href= "<c:url value="/admin/productInventory"/>" class="btn btn-danger" >cancel</a>
				<br><br>
	  	</form:form>
		
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>	  
