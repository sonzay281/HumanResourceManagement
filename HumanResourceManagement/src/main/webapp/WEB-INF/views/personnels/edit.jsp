<%@include file="../common/header.jsp" %>
<div class="page-header">
    <h1>Add Personnel</h1>
</div>
<form method="post" action="${SITE_URL}/personnels/save">
    <div class="row">
        <div class="col-md-1">
            <div class="form-group">
                <label>&nbsp;</label>
                <select name="salute" class="form-control">
                    <option value="Mr" <c:if test="${personnel.salute=='Mr'}">selected="selected"</c:if>>Mr</option>
                    <option value="Mrs" <c:if test="${personnel.salute=='Mrs'}">selected="selected"</c:if>>Mrs</option>
                    <option value="Miss" <c:if test="${personnel.salute=='Miss'}">selected="selected"</c:if>>Miss</option>
                    <option value="Ms" <c:if test="${personnel.salute=='Mrs'}">selected="selected"</c:if>>Ms</option>
                    </select>-->
                </div>
            </div>
            <div class="col-md-5">
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" class="form-control" required="required" value="${personnel.first_name}"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Last Name</label>
                <input type="text" name="lastName" class="form-control" required="required" value="${personnel.last_name}"/>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-md-6">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" class="form-control" required="required" value="${personnel.email}"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Contact No</label>
                <input type="text" name="contactNo" class="form-control" required="required" value="${personnel.contact_no}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Address</label>
                <textarea name="address" class="form-control" required="required">${personnel.address}</textarea>
            </div>
        </div>
    </div>
    <div class="pull-right">
        <input type="hidden" name="id" value="${personnel.id}"/>
        <button type="submit" class="btn btn-success">Save</button>
        <a href="${SITE_URL}/personnels" class="btn btn-danger">Back</a>
    </div>   
</form>
<%@include file="../common/footer.jsp" %>