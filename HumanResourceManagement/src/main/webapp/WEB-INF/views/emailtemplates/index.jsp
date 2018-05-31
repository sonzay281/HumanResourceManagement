<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Email Templates!</h1>
</div>        
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/emailtemplates/add" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
    </p>
</div>
<table class="table table-hover table-striped">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Slug</th>
        <th>Action</th>

    </tr>
    <c:forEach var="emailtemplate" items="${emailtemplates}">
        <tr>
            <td>${emailtemplate.id}</td>
            <td>${emailtemplate.title}</td>
            <td>${emailtemplate.slug}</td>
            <td>
                <a href="${SITE_URL}/emailtemplates/edit/${emailtemplate.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"></span>
                </a>
                <a href="${SITE_URL}/emailtemplates/delete/${emailtemplate.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<%@include file="../common/footer.jsp" %>