<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Edit Demand</h1>
</div>
<form method="post" action="${SITE_URL}/demands/save">
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Title</label>
                <input type="text" name="title" class="form-control" required="required" value="${demand.title}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Description</label>
                <textarea name="description" class="form-control" required="required" style="height:200px">${demand.description}</textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Company</label>
                <select name="${company.id}" class="form-control" required="required">
                    <option value="">Select Company</option>
                    <c:forEach var="c" items="${companies}">
                        <option value="${c.id}" <c:if test="${company.id==c.id}">selected="selected"</c:if>>${company.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Openings</label>
                <input type="text" name="openings" class="form-control" required="required" value="${demand.openings}"/>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Salary</label>
                <input type="text" name="salary" class="form-control" required="required" value="${demand.salary}"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Deadline</label>
                <input type="text" name="deadline" class="form-control" required="required" value="${demand.deadline}"/>
            </div>
        </div>

    </div>
    <input type="hidden" name="id" value="${demand.id}"/>
    <button type="submit" class="btn btn-success">Save</button>
    <a href="${SITE_URL}/demands" class="btn btn-danger">Back</a>

</form>
<%@include file="../common/footer.jsp" %>