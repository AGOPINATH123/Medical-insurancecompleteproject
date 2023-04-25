<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"  %>
<%@  page import="com.MedicalInsuranceproject.in.Entity.Customers" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USERDATA</title>
<style type="text/css">
@charset "UTF-8";
.submit {
background-color:gray;
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

color:gray;

font-weight: bold;
border:none; 
}

.text {
color:white;
font-weight: bold;
border:none; 
}
body {
  background-image: url('https://www.shutterstock.com/image-photo/womans-hands-writing-on-sheet-paper-485208172');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>

</head>
<body>
<br><br>
<br>
<br>
<br>

<p ><h1 class="head">REQUEST HAS BEEN SENDED SUCESSFULLY ...</h1></p>

<p ><h2 class="RED">WE WILL GIVE YOU RESPONSE SHOTLY </h2>  </p>


<center><button class="submit" type="submit" value="submit"><a href="/webpages/MedicalHome.jsp">HOME</button></center> 


</body>
</html>