<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  page import="com.MedicalInsuranceproject.in.Entity.Customers"%>    

<%@ page import ="org.apache.pdfbox.pdmodel.PDDocument" %>
<%@ page   import =" org.apache.pdfbox.pdmodel.PDPage"%>
<%@ page   import ="org.apache.pdfbox.pdmodel.PDPageContentStream"%>
 <%@ page  import ="org.apache.pdfbox.pdmodel.font.PDType1Font"  %>
 <%@ page import= "java.text.DateFormat" %>
 <%@ page import= "java.text.SimpleDateFormat" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Messagepage</title>
<style type="text/css">

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
<% Customers cust=(Customers)request.getAttribute("data"); %>
<br><br><br><br><br><br>
<h1>CLAIM STATUS  </h1><BR>
<h2>
Status Updated to <% out.print(cust.getHospitallist()); %> <br> <br>
CashLessAdmitAmount <% out.print(cust.getCashlessadmitlimt()+"/-"); %>Only <br> <br>
ClaimClearenaceAmount <% out.print(cust.getClearenceamout()+"/-"+ " For "+ cust.getClaimreason()); %> <br> <br>
StatusOfClaim  "<% out.print(cust.getStatusofclaim()); %>" <br>
</h2>
<% 	





String[] tableDetails = { "UID ", "Cmr_Name ", "Cmr_Age ", "Cmr_Gender ", "Cmr_mobile ",
		"Cmr_Email ", "Cmr_Aadhar ", "Cmr_Address  ", "Policy_Start Date" , "Policy_End Date",
		"Policy_taken For","Policy Premium","EMI","ReasonCLAIM","Selected-Hospital","dateOfjoin","AmountReleased",
		"CashlessAdmitAmount"
		};	
	String dateformatdevided= "yyyy-MM-dd";	
	DateFormat df = new SimpleDateFormat(dateformatdevided);
	String sdate=df.format(cust.getPstartdate());
	String edate=df.format(cust.getPenddate());
	String jdate=df.format(cust.getDateofjoin());

 String age=String.valueOf(cust.getCmr_Age());
String premium=String.valueOf(cust.getPremium());
 String emi=String.valueOf(cust.getEMI());
 String cashless=String.valueOf(cust.getCashlessadmitlimt());
 
 
 
 String [] Result={cust.getUID(),cust.getCmr_Name(),age,cust.getCmr_Gender(),cust.getCmr_mobile(),cust.getCmr_Email(),cust.getCmr_Address(),
		sdate,edate,cust.getPremiumfor(),premium,emi,cust.getClaimreason(),cust.getHospitallist(),jdate,cust.getClearenceamout(),cashless}; 


PDDocument document=new PDDocument();
PDPage firstpage=new PDPage();
document.addPage(firstpage);
PDPageContentStream stream=new PDPageContentStream(document, firstpage);
stream.beginText();
stream.setFont(PDType1Font.TIMES_ROMAN, 20);
stream.setLeading(16.3f);
stream.newLineAtOffset(200, firstpage.getTrimBox().getHeight()-200);
 


for (int i = 0; i < Result.length; i++) {

	stream.showText(tableDetails[i]+" = "+Result[i]);
	stream.newLine();
	stream.newLine();	
}

stream.endText();
stream.close();

document.save("D:\\XLFILES\\data2.pdf");
document.close(); %>

<button class="submit" ><a id="GFG" href="/webpages/MedicalHome.jsp"><span><strong>Home</strong></span></a></button>
<button class="submit" ><a id="GFG"  href="/webpages/DownloadView.jsp"><span><strong>DownloadFile</strong></span></a></button>

</body>
</html>