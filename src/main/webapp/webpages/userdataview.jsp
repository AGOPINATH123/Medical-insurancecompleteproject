<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@  page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Userdata</title>
<style type="text/css">
.data{
color: teal;}

#GFG {
            text-decoration: none;
        }
.sumitbutton{
font-size: 20px;
color: white;
font-family: monospace;
}
.claim {
background-color:green;
height:40px;
width:129px;
cursor:pointer;
text-align:center;
border: thick;
border-radius: 2px;
margin-right: 10px;
font-weight:bold;
font-size: 12px; 
transition: 0.15s;
}
.claim:hover {
	
opacity:0.8; 
}
</style>
</head>
<body>


<% 

Map<String,Object>list=(Map<String,Object>)request.getAttribute("data");


	 %>
<% 
for(Map.Entry<String,Object>entry:list.entrySet()){
	 
String key=entry.getKey();
Object val=entry.getValue();

	 %>
	<table>
	<tr><th><%out.print(key+" = "+val); %></th><strong><td class="data"><%//out.print( m );%></td></strong></tr>
	</table>
	<% 	
	   } 
    %>
<br><br>
<button class="claim"><a id="GFG" href="/webpages/MedicalHome.jsp"><Span class ="sumitbutton">HOME</span></a></button>

 


</body>
</html>