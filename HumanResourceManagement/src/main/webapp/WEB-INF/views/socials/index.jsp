<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Socials!</h1>
</div>        
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/socials/add" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
    </p>
</div>
<table class="table table-hover table-striped">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Created At</th>
        <th>Action</th>

    </tr>
    <c:forEach var="social" items="${socials}">
        <tr>
            <td>${social.id}</td>
            <td>${social.name}</td>
            <td>${social.createdAt}</td>
            <td>
                <a href="${SITE_URL}/socials/edit/${social.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"></span>
                </a>
                <a href="${SITE_URL}/socials/delete/${social.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<%@include file="../common/footer.jsp" %>