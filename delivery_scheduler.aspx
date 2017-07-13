<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    
        <!--Full Calendar-->
        <script type="text/javascript" src="https://code.jquery.com/ui/1.11.2/jquery-ui.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.6/fullcalendar.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.6/fullcalendar.min.css">
    <!--Bootstrap 3.3.7-->
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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

        <!--Main Content-->
        <div id="main" style="margin:0px; padding:0px">
            <nav class="navbar navbar-default" id="navigation"></nav>
            <div class="container-fluid" id="main">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);" onclick="window.location='index.aspx'">Home</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0);" onclick="window.location='sales.aspx'">Sales</a></li>
                    <li class="breadcrumb-item active">Delivery Planner</li>
                </ol>
                <h1>Delivery Planner</h1>
                <hr>
                    <div class="row" style="width:100%;">
                        
                    <div style="width:20%;float:left;">
                        <div id='external-events'>
                        <div class="form-group">
                            <label for="item_liable_person">Product Description</label>
                            <input type="text" class="form-control" id="item_liable_person" name="item_liable_person" placeholder="Product Description" onblur="filterevents()">
                        </div>
                        <hr>
                        <div id='external-events-listing' >
                            <div class='fc-event orange' id="1" data-color="orange">ORD17050149 | Identical Box	</div>
                            <div class='fc-event red' id="2" data-color="red">ORD17050151 | Jade Cranes Menthol Cone Box 2.6g</div>
                            <div class='fc-event purple' id="3" data-color="purple">My Event 3</div>
                            <div class='fc-event purple' id="4" data-color="purple">My Event 4</div>
                            <div class='fc-event'>My Event 5</div>
                            <div class='fc-event'>My Event 6</div>
                            <div class='fc-event'>My Event 7</div>
                            <div class='fc-event'>My Event 8</div>
                            <div class='fc-event'>My Event 9</div>
                            <div class='fc-event'>My Event 10</div>                            
                            <div class='fc-event'>My Event 11</div>
                            <div class='fc-event'>My Event 12</div>
                            <div class='fc-event'>My Event 13</div>
                            <div class='fc-event'>My Event 14</div>
                            <div class='fc-event'>My Event 15</div>
                            <div class='fc-event'>My Event 16</div>
                            <div class='fc-event'>My Event 17</div>
                            <div class='fc-event'>My Event 18</div>
                            <div class='fc-event'>My Event 19</div>
                            <div class='fc-event'>My Event 20</div>                            
                            <div class='fc-event'>My Event 21</div>
                            <div class='fc-event'>My Event 22</div>
                            <div class='fc-event'>My Event 23</div>
                            <div class='fc-event'>My Event 24</div>
                            <div class='fc-event'>My Event 25</div>
                            <div class='fc-event'>My Event 26</div>
                            <div class='fc-event'>My Event 27</div>
                            <div class='fc-event'>My Event 28</div>
                            <div class='fc-event'>My Event 29</div>
                            <div class='fc-event'>My Event 30</div>
                        </div>
                        <p><input type='checkbox' id='drop-remove' checked='checked' hidden/></p>
                        </div>
                    </div>
                    <div style="width:80%; float:left">
                        <div id='calendar'></div>

                        <div style='clear:both; '></div>
                    </div>
                </div>
                <!--/ Tab panes /-->
                <hr>
                <footer id="footer"></footer>
            </div>
        </div>
        <!--/Main Content/-->
    </form>


    <!-- Modal -->
    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Delivery Details</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="customer_or_num">Customer Order Number</label>
                        <input type="text" class="form-control" id="customer_or_num" placeholder="Customer Order Number" readonly>
                    </div>
                    <div class="form-group">
                        <label for="customer_product">Product</label>
                        <input type="text" class="form-control" id="customer_product" placeholder="Product" readonly>
                    </div>
                    <div class="form-group">
                        <label for="customer_product">PO Quantity</label>
                        <input type="text" class="form-control" id="customer_product" placeholder="PO Quantity" readonly>
                    </div>
                    <div class="form-group">
                        <label for="customer_allowance">Allowance</label>
                        <input type="text" class="form-control" id="customer_allowance" placeholder="Allowance" readonly>
                    </div>
                    <div class="form-group">
                        <label for="customer_allowance">Address</label>
                       <div class="input-group" item-width="100%">
       <select class="form-control selectpicker" id="selected_delivery_address" data-live-search="true" >
                            <option data-tokens="2nd Floor, Glass Wing, Ayala Museum, Highway Drive, Corner East Drive, Makati, 1200 Metro Manila, Philippines" value="2nd Floor, Glass Wing, Ayala Museum, Highway Drive, Corner East Drive, Makati, 1200 Metro Manila, Philippines">2nd Floor, Glass Wing, Ayala Museum, Highway Drive, Corner East Drive, Makati, 1200 Metro Manila, Philippines</option>
                            <option data-tokens="2/F Greenbelt 5, Ayala Center 1228, Makati, Metro Manila, Philippines" value="2/F Greenbelt 5, Ayala Center 1228, Makati, Metro Manila, Philippines">2/F Greenbelt 5, Ayala Center 1228, Makati, Metro Manila, Philippines</option>
                        </select>
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" data-toggle="modal" data-target="#myModal" onclick="copyaddress()"><span class="fa fa-map-o"></span></button>
      </span>
    </div><!-- /input-group -->
                    </div>
                    <div class="form-group">
                        <label for="customer_qty">Quantity</label>
                        <input type="text" class="form-control" id="customer_qty" placeholder="Quantity">
                    </div>
                     <div class="form-group">
                        <label for="remark">Remark</label>
                        <textarea class="form-control" id="remark" placeholder="Remark" rows="3"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Get Directions</h4>
                </div>
                <div class="modal-body">
                    <form action="http://maps.google.com/maps" method="get" target="_blank">
                        <input type="hidden" name="saddr" value="Kou Fu Color Printing Corporation" class="form-control" readonly>
                        <div class="form-group">
                            <label for="customer_contact_number">Our Destination</label>
                            <textarea name="daddr" id="wheredowegonow" class="form-control" value="" rows="3" readonly></textarea>
                        </div>
                        <button class="btn btn-primary" type="submit" value="Get directions">GET DIRECTIONS</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
<style type="text/css">
.orange {
		background-color: orange;
        border-color: orange;
	}
	.red {
		background-color: red;
        border-color: red;
	}
	.purple {
		background-color: purple;
        border-color: purple;
	}
    /* Button Primary */
    .btn-primary {
        color: #0275d8;
        background-image: none;
        background-color: transparent;
        border-color: #0275d8;
    }

    .btn-primary:hover {
        background-color: #0275d8;
        color: white;
        border-color: #0275d8;
    }

    /*--------------------------------------------*/
    /*                  CALENDAR                  */
    /*--------------------------------------------*/
    html, body {     
        width: 100%;
	   /* font-family: monospace;*/
    }
    #external-events {
        padding: 0 5px;
        border: 1px solid #ccc;
    }

    #external-events .fc-event {
        margin: 5px 0;
        cursor: pointer;
    }
        
    #external-events p {
        margin: 1.5em 0;
        font-size: 11px;
        color: #666;
    }
        
    #external-events p input {
        margin: 0;
        vertical-align: middle;
    }

    #calendar {
    
        width: 100%;
        overflow: hidden;
    }
</style>
<script type="text/javascript">
function filterevents(){


    $('.fc-event').hide();
    var txt = $('#item_liable_person').val();
    $('.fc-event').each(function(){
       if($(this).text().toUpperCase().indexOf(txt.toUpperCase()) != -1){
           $(this).show();
       }
    });
}

    $("#navigation").load("navigation.html");
    $("#footer").load("../footer.html");
    
    $(document).ready(function() {


        /* initialize the external events
        -----------------------------------------------------------------*/

       $('#external-events .fc-event').each(function() {

			// store data so the calendar knows to render an event upon drop
			$(this).data('event', {
				title: $.trim($(this).text()), // use the element's text as the event title
				stick: true, // maintain when user navigates (see docs on the renderEvent method)
				id: $(this).attr('id'),
                color: $(this).data('color')
			});
            
            console.log('min', $(this))

			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0  //  original position after the drag
			});

		});

        /* initialize the calendar
        -----------------------------------------------------------------*/

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            
			allDaySlot: true,
			slotEventOverlap: true,
            
			 timeFormat: 'H(:mm) a',
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar
            dragRevertDuration: 0,
            drop: function() {
                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

                
                $('#modalTitle').html(event.title);
                $('#modalBody').html(event.description);
                $('#eventUrl').attr('href',event.url);
                $('#calendarModal').modal();

                	console.log("dropped");
                console.log(arguments);
				console.log(date.format());
				console.log(this.id);

	        },
            eventDragStop: function( event, jsEvent, ui, view ) {

                if(isEventOverDiv(jsEvent.clientX, jsEvent.clientY)) {
                    $('#calendar').fullCalendar('removeEvents', event._id);
                    var el = $( "<div class='fc-event'>" ).appendTo( '#external-events-listing' ).text( event.title );
                    el.draggable({
                      zIndex: 999,
                      revert: true, 
                      revertDuration: 0 
                    });
                    el.data('event', { title: event.title, id :event.id, stick: true });
                }

                
                
            },eventClick:  function(event, jsEvent, view) {
                $('#modalTitle').html(event.title);
                $('#modalBody').html(event.description);
                $('#eventUrl').attr('href',event.url);
                $('#calendarModal').modal();
            },eventDrop: function(event, delta, revertFunc) {
				//inner column movement drop so get start and call the ajax function......
				console.log(event.start.format());
				console.log(event.id);
				
				//alert(event.title + " was dropped on " + event.start.format());
					
			},
        });


        var isEventOverDiv = function(x, y) {

            var external_events = $( '#external-events' );
            var offset = external_events.offset();
            offset.right = external_events.width() + offset.left;
            offset.bottom = external_events.height() + offset.top;

            // Compare
            if (x >= offset.left
                && y >= offset.top
                && x <= offset.right
                && y <= offset .bottom) { return true; }
            return false;

        }


    });
    
//Copy SideNav Address To Modal
    function copyaddress() {
        var addresstogo = document.getElementById("selected_delivery_address").value;
        $('#wheredowegonow').val(addresstogo);

    }
</script>
<!--
Simplyfy FullCalendar Event By Adding Search Bar And 
I am using Full calendar for different project but now I encouter a problem with it's draggable event. What if there are lots of events to available to be drag, eg. 500 events, how can I actually simplyfy it? Without scrolling upside-down. I'am looking for some idea like adding search bar, adding datatables etc. How can I do that?
