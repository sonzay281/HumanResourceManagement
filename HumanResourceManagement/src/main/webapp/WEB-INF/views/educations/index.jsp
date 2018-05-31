<%@include file="../common/header.jsp" %>
<h1>Educations!</h1>
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/educations/add" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
    </p>
</div>
<table class="table table-hover table-striped">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Action</th>

    </tr>
    <c:forEach var="education" items="${educations}">
        <tr>
            <td>${education.id}</td>
            <td>${education.educationName}</td>
            <td>
                <a href="${SITE_URL}/educations/edit/${education.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"></span>
                </a>
                <a href="${SITE_URL}/educations/delete/${education.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<%@include file="../common/footer.jsp" %>
