<%@include file="../common/header.jsp" %>
<h1>Demands!</h1>
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/demands/add" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
    </p>
</div>
<table class="table table-hover table-striped">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Openings</th>
        <th>Salary</th>
        <th>Deadline</th>
        <th>Company</th>
        <th>Created Date</th>
        <th>Status</th>
        <th>Followups</th>
        <th>Action</th>

    </tr>
    <c:forEach var="demand" items="${demands}">
        <tr class="row-${demand.id}">
            <td>${demand.id}</td>
            <td>${demand.title}</td>
            <td>${demand.openings}</td>
            <td>${demand.salary}</td>
            <td>${demand.deadline}</td>
            <td>${demand.company.name}</td>
            <td>${demand.createdAt}</td>
            <td>${demand.status}</td>
            <td>

                <a href="javascript:void(0)" class="total-followups">
                    ${demand.totalFollowups()}
                </a>
                <a href="javascript:void(0)" data-title="${demand.title}" data-id="${demand.id}" class="add-follow-btn btn btn-default">
                    <span class="glyphicon glyphicon-plus"></span>
                </a>
            </td>
            <td>
                <a href="${SITE_URL}/demands/edit/${demand.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"></span>
                </a>
                <a href="${SITE_URL}/demands/delete/${demand.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<div id="demand-followup-dialog" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"></h4>
            </div>
            <form id="followup-form">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Message</label>
                        <textarea name="message" class="form-control" required="required" style="height:150px"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Next Followup Date</label>
                        <input type="text" name="nextFollowupDate" class="form-control" required="required"/>
                    </div>
                    <input type="hidden" name="demand.id" id="follow-demand-id"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="save-follow-btn btn btn-primary">Save</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->                
<script>
    $(document).ready(function () {
        $(".add-follow-btn").on('click', function () {
            var $this = $(this);
            var $dialog = $("#demand-followup-dialog");
            $dialog
                    .find('.modal-title')
                    .html('Add Followup for ' + $this.attr('data-title'));
            $("#follow-demand-id").val($this.attr('data-id'));
            $dialog.modal();
        });

        $(".save-follow-btn").on('click', function () {

            $.post("${SITE_URL}/demands/followups/save",
                    $("#followup-form").serialize(), function (res) {
                if (res === "success") {
                    $id = $("#follow-demand-id").val();
                    $counter = $(".row-" + $id).find('.total-followups');
                    $value = parseInt($counter.text());

                    $counter.text(($value + 1));
                    document.forms["followup-form"].reset();
                    $("#demand-followup-dialog").modal('hide');
                }
            });
        });
    });
</script>
<%@include file="../common/footer.jsp" %>