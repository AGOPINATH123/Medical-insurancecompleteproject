<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--    <%@ page import= "java.sql.*;" %>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Claim page</title>
<style type="text/css">

table, th, td {
  border: none;
  border-collapse: collapse;
   padding: 5px;
}
th, td {
  padding-top: 0px;
  padding-bottom: 1px;
  padding-left: 50px;
  padding-right: 40px;
   text-align: left; 
     border-spacing: 30px;
}

.head {
color:white;
font-weight:bold;
border:none; 
}
.head:hover{
box-shadow:5px 5px 10px black;
color:white; 
}
body {
  background-image: url('https://img.freepik.com/free-photo/abstract-blur-pastel-beautiful-peach-pink-color-sky-warm-tone-background-design-as-bannerslide-show-others_1258-100366.jpg?w=740&t=st=1681176900~exp=1681177500~hmac=80a17307a137ff1ed9744d3181f6ed1a89ee8ddfc421811ee447ec323d988e7d');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
.claim {
background-color:black;
height:40px;
width:190px;
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
.detailstxt{

font-size: 20;
color: white;
text-align: center;

}
.sumitbutton{
font-size: 20px;
color: teal;
font-family: monospace;
}
</style>
</head>
<body>
<center><h1 class="head">HEALTH INSURANCE CLAIM-PAGE</h1></center>



<form action="/claiminser" method="post" >
<table  align="center" >
<tr><th style="width:50%" ><h3><span class="detailstxt"><u>DETAILS FOR CLAIM</u></span></h3></th></tr>
 
<!-- <tr><th><h4>POLICY NUMBER</h4></th><td><input type="text" name="policynum" id="policynum" placeholder="id number"></td>  </tr> -->
 <tr><th><h4>UID OF POLICY</h4></th><td><input type="text" name="UID" id="ide" placeholder="id number"></td> </tr>

<tr><th><h4>NAME AS PER POLICY</h4></th><td><input type="text" name="Cmr_Name" id="Cmr_Name" placeholder="Name"></td>  </tr>
<tr><th><h4>AGE</h4></th><td><input type="text" name="Cmr_Age" id="Cmr_Age" placeholder="Age"></td>  </tr>
<tr><th><h4>MOBILE NUMBER</h4></th><td><input type="text" name="Cmr_mobile" id="Cmr_mobile" placeholder="Mobilenumber"></td>  </tr>
<tr><th><h4>E-MAIL</h4></th><td><input type="text" name="Cmr_Email" id="Cmr_Email" placeholder="E-mail"></td>  </tr>

<tr><th><h4>CLAIM REASON</h4></th><td><input list="reasonclaim" name="Claimreason" id="Claimreason" placeholder="Select">
  <datalist id="reasonclaim">
    <option value="HEART_DESEASE">
    <option value="ACCIDENT">
    <option value="METERNITY">
    <option value="LUNG_DESEASE">    
    <option value="OTHER">
  </datalist>
 </td> </tr>

<tr><th><h4>
LIST_OF_HOSPITALS</h4></th><td><input list="hospitals" name="Hospitallist" id="Hospitallist" placeholder="Select">
<datalist id="hospitals" >
  <option  value="Apollo hospital" >
  <option  value="Yashoda hospital">
  <option  value="Rainbow hospital">
  <option  value="Fernandez hospital"> 
</datalist></td></tr>
<tr><th><h4>DATE OF ADMIT</h4></th><td><input type="date" name="dateofjoin" id="dateofjoin" placeholder="Date"></td>  </tr>

</table>
<center><button class="claim" type="submit" value="sumbit"><Span class ="sumitbutton">SEND REQUEST</span></button>
</center>

</form>
</body>
</html>