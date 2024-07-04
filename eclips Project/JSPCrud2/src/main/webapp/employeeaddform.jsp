<jsp:include page="header.jsp" />


<div class="container">

<form action="saveemployee.jsp" method="post">
	<div class="mb-3">
		<label for="exampleInputEmail1" class="form-label">Name
			address</label> <input type="text" class="form-control"
			id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
		
	</div>
	<div class="mb-3">
		<label for="exampleInputPassword1" class="form-label">Cell</label>
		<input type="text" class="form-control" id="exampleInputPassword1" name="cell">
	</div>
	
	<button type="submit" class="btn btn-primary">Submit</button>
</form>


</div>