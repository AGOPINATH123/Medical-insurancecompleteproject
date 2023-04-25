<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false"  %>
<%@  page import="com.MedicalInsuranceproject.in.Entity.Customers"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USERDATA</title>
<style type="text/css">
@charset "UTF-8";
.submit {
background-color:white;
color:black;
height:40px;
width:120px;
font-weight: bold;
border:none; 
border-radius: 5px;
margin-left:10px;
cursor:pointer; 
transition:box-shadow , background-color 0.15s;
}
.submit:hover{
box-shadow:5px 5px 10px black;
background-color :gold;
color:black; 
}
.head {

color:white;

font-weight: bold;
border:none; 
}
.head:hover{
box-shadow:5px 5px 10px black;
color:white; 
}
.text {
color:white;
font-weight: bold;
border:none; 
}
body {
  background-image: url('https://img.freepik.com/free-photo/weathered-blue-page_53876-88602.jpg?w=740&t=st=1681006151~exp=1681006751~hmac=dc3c884d654cd943309ba6972ca04495f4e106d00240f359a8493ddbbbec87a4');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<%
Customers customer =(Customers)request.getAttribute("dta");


%>
</head>
<body>
<p ><center><h1 class="head">HEALTH INSURANCE USER DATA</h1>  </center></p><br>

<p ><center><h1 class="RED">SEARCH USER DATA</h1>  </center></p>

<form action="/searchdata" method="post">
<table align="center">
<tr><th style="width: 30%"><h2>UID</h2></th><td><input type="text" name="UID" id="UID" placeholder="UID"></td> </TR>
</table>
<center><button class="submit" type="submit" value="submit">SUBMIT</button></center> 
</form>


</body>
</html>