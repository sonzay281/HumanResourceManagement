
<%@include file="../common/header.jsp" %>


<div class="pull-right">
    <a href="${SITE_URL}/companies/add" class="btn btn-default">
        <span class="glyphicon glyphicon-plus-sign"></span>
    </a>
</div>
<table class="table table-striped">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>COntact Person</th>
        <th>COntact No</th>
        <th>Email</th>
        <th>Address</th>
        <th>Logo URL</th>
        <th>Action</th>
    </tr>
    <c:forEach var="company" items="${companies}">
        <tr>
            <td>${company.id}</td>
            <td>${company.name}</td>
            <td>${company.contactPerson}</td>
            <td>
                <span class="btn btn-group-sm btn-info">Mobile:${company.mobileNo}</span>                <br>
                <span class="btn btn-group-sm btn-primary">Phone:${company.phoneNo}</span>
            </td>
            <td>${company.email} <a href="#"><span class="glyphicon glyphicon-envelope"></span></a></td>
            <td>${company.address}</td>
            <td>${company.logo}</td>
            <td>
                <a href="${SITE_URL}/companies/edit/${company.id}">
                    <button class="btn btn-primary "><span class="glyphicon glyphicon-pencil"></span></button>
                </a>
                <a href="${SITE_URL}/companies/delete/${company.id}">
                    <button class="btn btn-warning"><span class="glyphicon glyphicon-trash"></span></button>
                </a>
            </td>

        </tr>
    </c:forEach>
</table>


<%@include file="../common/footer.jsp" %>
