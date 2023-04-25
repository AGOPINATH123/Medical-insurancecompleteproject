<%@page import="jakarta.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
  background-image: url('https://wallpapers.com/images/hd/orange-aesthetic-fluffy-clouds-fa90xcbvzlx9n60e.webp');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
</head>
<body><br><br><br><br><br><br>
<p ><center><h1 class="head">HEALTH INSURANCE PENDING DATA</h1>  </center></p><br>
<br><br><br>
<%-- <h2><% String info=(String)request.getAttribute("info"); %></h2>

<h1>  <% out.print(info); %></h1> --%>

<p ><center><h1 class="RED">SEARCH USER DATA</h1>  </center></p>

<form action="/agentsearch" method="get"> 
<table align="center">
<tr><th style="width: 30%"><h2>UID</h2></th><td><input type="text" name="UID" id="UID" placeholder="UID"></td> </TR>
</table>
<center><button class="submit" type="submit" value="submit">SUBMIT</button></center> 
</form>


</body>
</html>