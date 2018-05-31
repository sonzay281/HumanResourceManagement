<%@include file="../common/header.jsp" %>
<h1>Personnel</h1>
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/personnels/add" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
    </p>
</div>
<table class="table table-hover table-striped">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Contact No</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach var="personnel" items="${personnels}">
        <tr>
            <td>${personnel.id}</td>
            <td>${personnel.salute} ${personnel.firstName} ${personnel.lastName}</td>
            <td>${personnel.email}</td>
            <td>${personnel.contactNo}</td>
            <td>
        <c:choose>
            <c:when test="${personnel.status}">
                <label class="label label-success">Active</label>
            </c:when>
            <c:otherwise>
                <label class="label label-danger">Inactive</label>
            </c:otherwise>
        </c:choose>
        </td>
        <td>
            <a href="${SITE_URL}/personnels/edit/${personnel.id}" class="btn btn-default">
                <span class="glyphicon glyphicon-pencil"></span>
            </a>
            <a href="${SITE_URL}/personnels/delete/${personnel.id}" class="btn btn-default">
                <span class="glyphicon glyphicon-trash"></span>
            </a>
        </td>
        </tr>
    </c:forEach>
</table>
<%@include file="../common/footer.jsp" %>