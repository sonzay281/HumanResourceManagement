
<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Edit Skill</h1>
</div>
<form method="post" action="${SITE_URL}/skills/save">
    <div class="form-group">
        <div class="col-md-12">
            <label>Name</label>

            <input type="text" name="name" class="form-control" required="required"  value="${skill.name}"/>
        </div>
    </div>
    <input type="hidden" name="id" value="${skill.id}"/>
    <button type="submit" class="btn btn-success">Save</button>
    <a href="${SITE_URL}/skills" class="btn btn-danger">Back</a>

</form>
<%@include file="../common/footer.jsp" %>