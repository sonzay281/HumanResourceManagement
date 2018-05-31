<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Add Email Template</h1>
</div>
<form method="post" action="${SITE_URL}/emailtemplates/save">
    <div class="form-group">
        <div class="col-md-12">
            <label>Title</label>
            <input type="text" name="title" class="form-control" required="required"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-12">
            <label>Slug</label>
            <input type="text" name="slug" class="form-control" required="required"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-12">
            <label>Description</label>
            <textarea name="description" class="form-control" required="required" style="height:150px"></textarea>
        </div>
    </div>
    <button type="submit" class="btn btn-success">Save</button>
    <a href="${SITE_URL}/emailtemplates" class="btn btn-danger">Back</a>

</form>
<%@include file="../common/footer.jsp" %>