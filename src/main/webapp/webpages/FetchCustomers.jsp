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
<title>Fetchpage</title>
</head>
<body>

<% Iterable<Customers> list= (Iterable<Customers>) request.getAttribute("fetch"); %>

<% 
if(list!=null && !list.equals(0)){
out.print(list);
}
%>

</body>
</html>