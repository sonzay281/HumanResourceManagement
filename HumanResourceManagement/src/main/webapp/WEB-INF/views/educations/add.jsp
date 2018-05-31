<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Add Education</h1>
</div>
<form method="post" action="${SITE_URL}/educations/save">
        <div class="form-group">
            <div class="col-md-12">
                <label>Name</label>
                <input type="text" name="educationName" class="form-control" required="required"/>
            </div>
        </div>
    <button type="submit" class="btn btn-success">Save</button>
    <a href="${SITE_URL}/educations" class="btn btn-danger">Back</a>
   
</form>
        <%@include file="../common/footer.jsp" %>