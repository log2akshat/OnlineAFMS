<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>

<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
<!-- Core + Skin CSS -->
<link rel="stylesheet" type="text/css" href="<s:url value="../css/Register.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
		
	 <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map_canvas { height: 100% }
    </style>
    	
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript">
    </script>
</head> 
<body> 

<div id="heading">
<h2> <s:text name="title_dates"/> </h2>
</div>

<div id="index">
 
<table class="wwFormTable">
<tr><td><s:text name="contact_person"/></td>
<td><s:text name="contact_info"/></td></tr>

<tr><td><s:text name="app_last_date"/></td>
<td><s:text name="app_last_date_ans"/></td></tr>

<tr><td><s:text name="test_date"/></td>
<td><s:text name="test_date_ans"/></td></tr>

<tr><td><s:text name="venue"/></td>
<td><s:text name="venue_ans"/></td></tr>

<tr><td><s:text name="interview_date"/></td>
<td><s:text name="interview_date_ans"/></td></tr>

<tr><td><s:text name="lodge_query"/></td>
<td><s:text name="lodges_info"/></td></tr>
</table> 
</div>
<br><br>

<div align="center">
<b><font size="4"><s:text name="google_map"/></font></b>
</div>

<br>
<div align="center" id="map" style="width: 900px; height: 700px"></div>
<br>
<script type="text/javascript">
var iucaa ='<p align="left">INTER-UNIVERSITY CENTRE FOR ASTRONOMY AND ASTROPHYSICS, PUNE<br>'+
'Aundh Road<br>'+
'Pune University Campus, Ganeshkhind<br>'+
'Pune, Maharashtra<br>'+
'Pin - 411007<br>'+
'Telephone - 020 2560 4100<br>'+
'<a href="http://www.iucaa.ernet.in">Website</a></p>';

var ncra ='<p align="left">NATIONAL CENTRE FOR RADIO ASTROPHYSICS, (NCRA-TIFR, PUNE)<br>'+
'Aundh Road<br>'+
'Pune University Campus, Ganeshkhind<br>'+
'Pune, Maharashtra<br>'+
'Pin - 411007<br>'+
'Telephone - 020 2571 9000<br>'+
'<a href="http://www.ncra.tifr.res.in">Website</a></p>';

var audi ='<p align="left">Chandrasekhar Auditorium, IUCAA PUNE<br>'+
'Aundh Road<br>'+
'Pune University Campus, Ganeshkhind<br>'+
'Pune, Maharashtra<br>'+
'Pin - 411007</p>';

    var locations = [
                     [iucaa, 18.560782,73.825782, 4],
                     [ncra, 18.561496,73.827573, 5],
                     [audi, 18.559135,73.825951,5]
                   ];

                   var map = new google.maps.Map(document.getElementById('map'), {
                     zoom: 15,
                     center: new google.maps.LatLng(18.560496,73.826569),
                     mapTypeId: google.maps.MapTypeId.ROADMAP
                   });

                   var infowindow = new google.maps.InfoWindow();

                   var marker, i;

                   for (i = 0; i < locations.length; i++) {  
                     marker = new google.maps.Marker({
                       position: new google.maps.LatLng(locations[i][1], locations[i][2], locations[i][3]),
                       map: map,
                       draggable:true,
                       animation: google.maps.Animation.DROP
                     });

                     //google.maps.event.addListener(marker, 'click', toggleBounce);
                     google.maps.event.addListener(marker, 'click', (function(marker, i) {
                       return function() {
                         infowindow.setContent(locations[i][0]);
                         infowindow.open(map, marker);
                       }
                     })(marker, i));
                   }
</script>
</body>