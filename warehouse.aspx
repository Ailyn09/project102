<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!--Bootstrap 3.3.7-->
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--DataTable-->
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/fixedheader/3.1.2/js/dataTables.fixedHeader.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.1.1/js/responsive.bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.1.2/css/fixedHeader.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css">

    <!--Date Timepicker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">

    <!--Bootstrap-Select-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
    <!--SweetAlert-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.js"></script>
    <!--Font-awesome 4.7.0-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--Custom-->
    <link rel="stylesheet" type="text/css" href="custom.css">

</head>

<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default" id="navigation"></nav>
        <div class="container-fluid" id="main">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);" onclick="window.location=''">Home</a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0);" onclick="window.location=''">Warehouse</a></li>
                <li class="breadcrumb-item active">Item Management</li>
            </ol>
            <h1>Item Management</h1>
            <hr>
            
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">List</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" onclick="generate_code()">Details</a></li>
                <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Add Record</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home" style="margin-top:  10px; ">
                    <table id="tb_jobsched" class="display nowrap table table-bordered" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th width="3%">#</th>
                                <th width="10%">Code</th>
                                <th width="25%">Name</th>
                                <th width="25%">Manufacturer</th>
                                <th width="15%">Remarks</th>
                                <th width="12%">Group</th>
                                <th width="10%"></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th width="3%">#</th>
                                <th width="10%">Code</th>
                                <th width="25%">Name</th>
                                <th width="25%">Manufacturer</th>
                                <th width="15%">Remarks</th>
                                <th width="12%">Group</th>
                                <th width="10%"></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mach7 Interosis</td>
                                <td>12312</td>
                                <td>1141414143</td>
                                <td>12312</td>
                                <td>Corrugated Paper</td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                                        <button type="button" class="btn btn-primary"><span class="fa fa-file-pdf-o"></span></button>
                                        <button type="button" class="btn btn-primary updatejobstatus"><span class="fa fa-gear"></span></button>
                                        <button type="button" class="btn btn-primary"><span class="fa fa-trash"></span></button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Mach7 Interosis</td>
                                <td>12312</td>
                                <td>1141414143</td>
                                <td>12312</td>
                                <td>Compound Substrate</td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                                        <button type="button" class="btn btn-primary"><span class="fa fa-file-pdf-o"></span></button>
                                        <button type="button" class="btn btn-primary updatejobstatus"><span class="fa fa-gear"></span></button>
                                        <button type="button" class="btn btn-primary"><span class="fa fa-trash"></span></button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div role="tabpanel" class="tab-pane" id="profile">
                   ...
                </div>
                <div role="tabpanel" class="tab-pane" id="messages">...</div>
            </div>
            <hr>
            <footer id="footer"></footer>
        </div>
    </form>
</body>

</html>
<script type="text/javascript">
    $("#navigation").load("navigation.html");
    $("#footer").load("../footer.html");
    
    $(document).ready(function () {
        // DataTable
        var table = $('#tb_jobsched').DataTable();

        // Apply the search
        table.columns().every(function () {
            var that = this;

            $('input', this.footer()).on('keyup change', function () {
                if (that.search() !== this.value) {
                    that
                        .search(this.value)
                        .draw();
                }
            });
        });

        // Setup - add a text input to each footer cell
        $('#tb_jobsched tfoot th').each(function () {
            var title = $(this).text();
            $(this).html('<input class="form-control" type="text" placeholder="Search ' + title + '" style="width:100%" />');
        });

        table.column(5).every(function () {
            var column = this;
            var select = $('<select class="form-control"><option value=""></option></select>')
                .appendTo($(column.footer()).empty())
                .on('change', function () {
                    var val = $.fn.dataTable.util.escapeRegex(
                        $(this).val()
                    );

                    column
                        .search(val ? '^' + val + '$' : '', true, false)
                        .draw();
                });

            column.data().unique().sort().each(function (d, j) {
                select.append('<option value="' + d + '">' + d + '</option>')
            });
        });
    });

</script>
<style type="text/css">
    tfoot input {
        width: 100%;
    }

    tfoot {
        display: table-header-group;
    }
</style>
