<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

     <!-- MAIN CONTAINER -->
	  <div class="container">
	  	<div class="page-header">
	  		<h1>Add Product</h1>
	  		<p>Please fill all fields</p>
	  	</div>
	  	
	  	<form:form action="${pageContext.request.contextPath}/admin/product/addProduct" 
	  	           commandName="product" method="post" enctype="multipart/form-data">
		  		<div class="form-group">
		  		  <label forName="name">Name</label>
		  		  <form:input path="productName" id="name" class="form-control"/>
		  		</div>
	  		
	  		    <div class="form-group">
					<label for="productDescription">Description</label>
					<form:textarea path="productDescription" id="productDescription" class="form-control"/>
				</div>
				
				<div class="form-group">
		  		  <label forName="manufacturer">Manufacturer</label>
		  		  <form:input path="productManufacturer" id="productManufacturer" class="form-control"/>
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
					<form:input path="productPrice" id="productPrice" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="unitsInStock">Units</label>
					<form:input path="unitsInStock" id="unitsInStock" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="productImage" class="control-label">Choose Image</label>
					<form:input path="productImage" id="productImage" type="file" class="form-control"/>
				</div>
				
		
				<br>
				<input type="submit" value="Submit" class="btn btn-primary">
				<a href= "<c:url value="/admin/productInventory"/>" class="btn btn-danger" >cancel</a>
				<br><br>
	  	</form:form>
		
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>	  
