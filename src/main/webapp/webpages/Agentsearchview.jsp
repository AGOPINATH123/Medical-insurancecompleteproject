<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  page import="com.MedicalInsuranceproject.in.Entity.Customers"%>
<%@  page import="java.util.List"%>
<%@  page import="java.util.ArrayList"%>
<%@  page import="java.util.Iterator"%>
<%@  page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>agentviewpage</title>
<style type="text/css">
body {
  background-image: url('https://wallpapers.com/images/hd/orange-aesthetic-fluffy-clouds-fa90xcbvzlx9n60e.webp');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
th, td {
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 3px;
  padding-right: 40px;
  text-align: left;
}
.CUSTOMER{
color: white;}

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

#GFG{
            text-decoration: none;
color: black;
}
</style>
</head>
<body>
<br><br><br>
<h1 class="CUSTOMER">CUSTOMER DETAIL</h1>
<% Map<String,Object>map=(Map<String,Object>)request.getAttribute("data");  %>

<%for(Map.Entry<String,Object>mp:map.entrySet()){
	String key=mp.getKey();
	Object ob=mp.getValue();
	%>
	<h3>
	<% 
	out.print(key+" = "+ ob); 
	%>
	</h3>
	<%
	}
%>
<form action="/AgentMessage" method="post">
<br><br><br>
<h2 class="CUSTOMER">UPADTE THE DETAILS</h2>
 <table>
  <tr><th><h3>Enter Person UID</h3></th><td><input type="text" name="UID" id="UID" placeholder="uid"></td> 
  <th><h3>AligibleCashlessAdmit</h3></th><td><input type="number" name="cashlessadmitlimt" id="cashlessadmitlimt" placeholder="Amount"></td></tr>
<tr><th><h3>ClaimAmount</h3></th><td><input type="text" name="Clearenceamout" id="Clearenceamout" placeholder="ClaimAmount"></td>
<th><h3 align="center">StatusOfClaim</h3></th><td><input type="text" name="Statusofclaim" id="Statusofclaim" placeholder="Status"></td></tr>
</table>

<button class="submit" type="submit" value="BACK"><a id="GFG" HREF="/webpages/Agentsearch.jsp">BACK</a></button>
<button class="submit" type="submit" value="SUBMIT">SUBMIT</button>
</Center>




</form>
<br><br><br><br><br><br>
</body>
</html>