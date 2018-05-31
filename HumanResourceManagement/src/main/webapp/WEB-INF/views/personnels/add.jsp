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
                    <option value="Mr">Mr</option>
                    <option value="Mrs">Mrs</option>
                    <option value="Miss">Miss</option>
                    <option value="Ms">Ms</option>
                </select>
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label>First Name</label>
                <input type="text" name="firstName" class="form-control" required="required"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Last Name</label>
                <input type="text" name="lastName" class="form-control" required="required"/>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-md-6">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" class="form-control" required="required"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Contact No</label>
                <input type="text" name="contactNo" class="form-control" required="required"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Address</label>
                <textarea name="address" class="form-control" required="required"></textarea>
            </div>
        </div>
    </div>
        <div class="pull-right">
            <button type="submit" class="btn btn-success">Save</button>
            <a href="${SITE_URL}/personnels" class="btn btn-danger">Back</a>
        </div>   
</form>
<%@include file="../common/footer.jsp" %>