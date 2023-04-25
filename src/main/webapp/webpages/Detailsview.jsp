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
<title>CustomerDetails</title>
<style type="text/css">

.data{
color: teal;
}

</style>

<%
/*
String[] tableDetails = { "UID ", "Cmr_Name ", "Cmr_Age ", "Cmr_Gender ", "Cmr_mobile ",
		"Cmr_Email ", "Cmr_Aadhar ", "Cmr_Address  ", "Cmr_qualification " ,"Policy_Start Date" , "Policy_End Date","Policy Premium","Policy_taken For",
		"Sp_Name ", "Sp_Age " , "Sp_Gender ", "Sp_mobile ", "Sp_Email  ", "Sp_Aadhar  ",
		"Sp_Address  ", "Sp_qualification  ", "Sp_No_ofChildren ", "ch1_Name ", "ch1_Age  ", "ch2_Name = ",
		"ch2_Age  ", "No_ofDependents " ,"Dp1_Name ", "Dp1_Age  ", "Dp1_Gender  ", "Dp1_Aadhar ",
		"Dp1_qualification ", "Dp1_Relation ", "Dp2_Name ", "Dp2_Age ", "Dp2_Gender ", "Dp2_Aadhar","Dp2_qualification", "Dp2_Relation",
		
		
};*/

Map<String,Object>list=(Map<String,Object>)request.getAttribute("data");

Set<Object>listemi=(Set<Object>)request.getAttribute("emidata");

%>
</head>
<body>

 <% 
	 
 for(Map.Entry<String,Object>entry:list.entrySet()){
	 
String key=entry.getKey();
Object val=entry.getValue();
	 
 //for(Object m : list){ 
	
	 %>
	 <table>
	
	<tr><th><% out.print(key+" \t\t= "+val) ; //out.print(tableDetails[i++]+" = "); %></th><strong><td class="data"><%//out.print( m );%></td></strong></tr>
	<% 	
	
	 }   
 %> 
 </table>
<%
  for(Object m : listemi){
	  %>
	
 <h3 class="data">  <% out.print(m); %></h3>
  <%
  }

  %>
 
 
	
 
	
</body>
</html>