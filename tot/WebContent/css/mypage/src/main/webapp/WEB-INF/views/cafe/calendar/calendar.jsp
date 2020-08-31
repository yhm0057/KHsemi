 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
   <script type="text/javascript"
   src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <link href="../../../resources/caleadar/cal.css" rel="stylesheet" type="text/css"
   media="all" />
<script type="text/javascript">

   var calendars = {};
   
   $(document).ready(function() {
      
        var thisMonth = moment().format('YYYY-MM');

        var eventArray = [
          { startDate: thisMonth + '-10', endDate: thisMonth + '-14', title: 'Multi-Day Event' },
          { startDate: thisMonth + '-21', endDate: thisMonth + '-23', title: 'Another Multi-Day Event' }
        ];
      
        calendars.clndr1 = $('.cal1').clndr({
             events: eventArray,
             
             clickEvents: {
               click: function(target) {                
                console.log(target.date._i);
                target.attr('background', 'red');
               }
             },
             multiDayEvents: {
               startDate: 'startDate',
               endDate: 'endDate'
             },
             showAdjacentMonths: true,
             adjacentDaysChangeMonth: false
           });
        
   });
</script>

<!----Calender -------->
<script src="../../../../../resources/calendar/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="../../../../../resources/calendar/js/jquery.openCarousel.js"></script>
<script src="../../../../../resources/calendar/js/moment-2.2.1.js" type="text/javascript"></script>
<script src="../../../../../resources/calendar/js/clndr.js" type="text/javascript"></script>
<script src="../../../../../resources/calendar/js/site.js" type="text/javascript"></script>
<!----End Calender -------->

<div class="cal1"></div>
<%@ include file="../../layout/footer.jsp"%>
	