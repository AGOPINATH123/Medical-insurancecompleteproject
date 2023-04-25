<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin-top:0; 
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100% 100%;
}
table, th, td {
  border: none;
  border-collapse: collapse;
   
}
th, td {
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 30px;
  padding-right: 40px;
   text-align: left;
}
#Home {background-color:white;
background-repeat: no-repeat;
background-size: 100%;
color: black;
}
#News {background-color: white;color: black;}
#Contact {background-color: white;color: black;}
#About {background-color: white;color: black;}

.register {
background-color: black;
color:WHITE;
height: 40px;
width: 150px;
text-align: center;
border: none;
border-radius: 20px;
font-size: 14px;
font-weight:lighter;
cursor:pointer;
transition:background-color 0.15s;
}
.register:hover {
background-color: orange;
color: white;

}
.detailstxt{

font-size: 20;
color: orange;
text-align: center;

}
.head {
color:olive;
font-weight: bold;
font-size: 50px;
border:none; 
font-family:inherit;
font-style:script;
background-color:silver;
background-repeat:no-repeat;
background-size:100%;
margin-bottom: 0px;
margin-top: 0px;
}
.head:hover{
box-shadow:5px 5px 10px black;
color:black; 
}
.marquetag{
font-size: 22px;
color: white;
padding-top: 10px;
padding-bottom: 10px;

}
.amt{
color:maroon;
}

</style>
</head>
<body>
<center><h1 class="head">HEALTH INSURANCE REGISTRATION-PAGE</h1></center>

<button class="tablink" onclick="openPage('Home', this, 'grey')">SINGLE</button>
<button class="tablink" onclick="openPage('News', this, 'green')" id="defaultOpen">MARRIED</button>
<button class="tablink" onclick="openPage('Contact', this, 'teal')">MARRIED+CHILDREN</button>
<button class="tablink" onclick="openPage('About', this, 'orange')">FAMILY</button>

<div id="Home" class="tabcontent">
<form action="/custometrss" method="post">
<table>
 <tr><th style="width: 30%"><h3><span class="detailstxt"><u>CUSTOMER DETAILS</u></span></h3></th></tr>
 
 <tr><th><h4>UID</h4></th><td><input type="text" name="UID" id="ide" placeholder="id number"></td> 
<th><h4>NAME</h4></th><td><input type="text" name="Cmr_Name" id="name" placeholder="FullName"></td>
<th><h4>AGE</h4></th><td><input type="number" name="Cmr_Age" id="name" placeholder="Age"></td></tr>

<tr><th><h4>GENDER</h4></th><td><input type="text" name="Cmr_Gender" id="name" placeholder="Gender"></td>
<th><h4>MOBILE_NO</h4></th><td><input type="text" name="Cmr_mobile" id="number" placeholder="Number"></td>
<th><h4>E_MAIL</h4></th><td><input type="text" name="Cmr_Email" id="mail" placeholder="E mail"></td></tr>

<tr><th><h4>AADHAR</h4></th><td><input type="text" name="Cmr_Aadhar" id="aadhar" placeholder="Aadhar"></td>
<th><h4>ADDRESS</h4></th><td><input type="text" name="Cmr_Address" id="aadhar" placeholder="Address"></td>
<th><h4>QUALIFICATION</h4></th><td><input type="text" name="Cmr_qualification" id="qualif" placeholder="Qualification"></td></TR>
<tr><th><h4>POLICY_START_DATE</h4></th><td><input type="date" name="pstartdate" id="pstartdate" placeholder="S-Date"></td>
<th><h4>POLICY_END_DATE</h4></th><td><input type="date" name="penddate" id="penddate" placeholder="E-Date"></td>
<th><h4>POLICY PREMIUM</h4></th><td><input type="number" name="premium" id="premium" placeholder="Premium Amount"></td></TR>

<tr><th><h4>PREMIUM -FOR</h4></th><td><input CLASS="check" type="checkbox" name="premiumfor" id="premiumfor" value="INDIVIDUAL">INDIVIDUAL</td></TR>

</table>
<br><br><br><br><br><br>

<marquee class="marquetag" width="100%" behavior="scroll" bgcolor="orenge"><strong>YOUR HEALTH INSURANCE PREMIUM IS <span class="amt">1750/-MONTH </span>YOUR COVER AMOUTN IS <span class="amt">300000/-</span></strong></marquee>

<br><br><br><br>
<CENTER><button class="register" type="submit" value="SUBMIT">SUBMIT</button></CENTER>
</form>
</div>




<div id="News" class="tabcontent">
<form action="/custometrs" method="post">
 <table>
 <tr><th style="width:30%"><h3><span class="detailstxt"><u>CUSTOMER DETAILS</u></span></h3></th></tr>
 
 <tr><th><h4>UID</h4></th><td><input type="text" name="UID" id="ide" placeholder="id number"></td> 
<th><h4>NAME</h4></th><td><input type="text" name="Cmr_Name" id="name" placeholder="FullName"></td>
<th><h4>AGE</h4></th><td><input type="number" name="Cmr_Age" id="name" placeholder="Age"></td></tr>

<tr><th><h4>GENDER</h4></th><td><input type="text" name="Cmr_Gender" id="name" placeholder="Gender"></td>
<th><h4>MOBILE_NO</h4></th><td><input type="text" name="Cmr_mobile" id="number" placeholder="Number"></td>
<th><h4>E_MAIL</h4></th><td><input type="text" name="Cmr_Email" id="mail" placeholder="E mail"></td></tr>

<tr><th><h4>AADHAR</h4></th><td><input type="text" name="Cmr_Aadhar" id="aadhar" placeholder="Aadhar"></td>
<th><h4>ADDRESS</h4></th><td><input type="text" name="Cmr_Address" id="aadhar" placeholder="Address"></td>
<th><h4>QUALIFICATION</h4></th><td><input type="text" name="Cmr_qualification" id="qualif" placeholder="Qualification"></td></TR>
 <tr><th><h4>POLICY_START_DATE</h4></th><td><input type="date" name="pstartdate" id="pstartdate" placeholder="S-Date"></td>
<th><h4>POLICY_END_DATE</h4></th><td><input type="date" name="penddate" id="penddate" placeholder="E-Date"></td>
<th><h4>POLICY PREMIUM</h4></th><td><input type="number" name="premium" id="premium" placeholder="Premium Amount"></td></TR>

 
<tr><th><h3><span class="detailstxt"><u>SPOUSE DETAILS</u></span></h3></th></tr>


<tr><th><h4>SPOUSE-NAME</h4></th><td><input type="text" name="Sp_Name" id="sname" placeholder="FullName"></td>
<th><h4>SPOUSE-AGE</h4></th><td><input type="number" name="Sp_Age" id="sage" placeholder="Age"></td>
<th><h4>SPOUSE-GENDER</h4></th><td><input type="text" name="Sp_Gender" id="sgender" placeholder="Gender"></td></tr>

<tr><th><h4>SPOUSE-MOBILE_NO</h4></th><td><input type="text" name="Sp_mobile" id="snumber" placeholder="Number"></td>
<th><h4>SPOUSE-E_MAIL</h4></th><td><input type="text" name="Sp_Email" id="smail" placeholder="E mail"></td>
<th><h4>S_AADHAR</h4></th><td><input type="text" name="Sp_Aadhar" id="saadhar" placeholder="AdharNo"></td></tr>

<tr><th><h4>S_ADDRESS</h4></th><td><input type="text" name="Sp_Address" id="saddress" placeholder="Address"></td>
<th><h4>S_QUALIFICATION</h4></th><td><input type="text" name="Sp_qualification" id="squalif" placeholder="Qualification"></td></tr>

<tr><th><h4>PREMIUM -FOR</h4></th><td><input CLASS="check" type="checkbox" name="premiumfor" id="premiumfor" value="MARRIED">MARRIED</td></TR>

</table> 
<br><br><br>

<marquee class="marquetag" width="100%" behavior="scroll" bgcolor="orenge"><strong>YOUR HEALTH INSURANCE PREMIUM IS <span class="amt">2500/-MONTH </span>YOUR COVER AMOUTN IS <span class="amt">500000/-</span></strong></marquee>

<br><br><br><br>
<CENTER><button class="register" type="submit" value="SUBMIT">SUBMIT</button></CENTER>
</form>
</div>




<div id="Contact" class="tabcontent">
<form action="/custometrss" method="post">
 <table>
 <tr><th style="width:20%"><h3><span class="detailstxt"><u>CUSTOMER DETAILS</u></span></h3></th></tr>
 
 <tr><th><h4>UID</h4></th><td><input type="text" name="UID" id="ide" placeholder="id number"></td> 
<th><h4>NAME</h4></th><td><input type="text" name="Cmr_Name" id="name" placeholder="FullName"></td>
<th><h4>AGE</h4></th><td><input type="number" name="Cmr_Age" id="name" placeholder="Age"></td></tr>

<tr><th><h4>GENDER</h4></th><td><input type="text" name="Cmr_Gender" id="name" placeholder="Gender"></td>
<th><h4>MOBILE_NO</h4></th><td><input type="text" name="Cmr_mobile" id="number" placeholder="Number"></td>
<th><h4>E_MAIL</h4></th><td><input type="text" name="Cmr_Email" id="mail" placeholder="E mail"></td></tr>

<tr><th><h4>AADHAR</h4></th><td><input type="text" name="Cmr_Aadhar" id="aadhar" placeholder="Address"></td>
<th><h4>ADDRESS</h4></th><td><input type="text" name="Cmr_Address" id="aadhar" placeholder="Address"></td>
<th><h4>QUALIFICATION</h4></th><td><input type="text" name="Cmr_qualification" id="qualif" placeholder="Qualification"></td></TR>
<tr><th><h4>POLICY_START_DATE</h4></th><td><input type="date" name="pstartdate" id="pstartdate" placeholder="S-Date"></td>
<th><h4>POLICY_END_DATE</h4></th><td><input type="date" name="penddate" id="penddate" placeholder="E-Date"></td>
<th><h4>POLICY PREMIUM</h4></th><td><input type="number" name="premium" id="premium" placeholder="Premium Amount"></td></TR>


<tr><th><h3><span class="detailstxt"><u>SPOUSE DETAILS</u></span></h3></th></tr>


<tr><th><h4>SPOUSE-NAME</h4></th><td><input type="text" name="Sp_Name" id="sname" placeholder="FullName"></td>
<th><h4>SPOUSE-AGE</h4></th><td><input type="number" name="Sp_Age" id="sage" placeholder="Age"></td>
<th><h4>SPOUSE-GENDER</h4></th><td><input type="text" name="Sp_Gender" id="sgender" placeholder="Gender"></td></tr>

<tr><th><h4>SPOUSE-MOBILE_NO</h4></th><td><input type="text" name="Sp_mobile" id="snumber" placeholder="Number"></td>
<th><h4>SPOUSE-E_MAIL</h4></th><td><input type="text" name="Sp_Email" id="smail" placeholder="E mail"></td>
<th><h4>S_AADHAR</h4></th><td><input type="text" name="Sp_Aadhar" id="saadhar" placeholder="AdharNo"></td></tr>

<tr><th><h4>S_ADDRESS</h4></th><td><input type="text" name="Sp_Address" id="saddress" placeholder="Address"></td>
<th><h4>S_QUALIFICATION</h4></th><td><input type="text" name="Sp_qualification" id="squalif" placeholder="Qualification"></td>
<th><h4>NO OF CHILDRENS</h4></th><td><input type="number" name="Sp_No_ofChildren" id="noofchids" placeholder="No.ofchildren"></td></tr>

<tr><th><h3><span class="detailstxt"><u>CHILD DETAILS</u></span></h3></th></tr>


<tr><th><h4>CHILD-NAME</h4></th><td><input type="text" name="ch1_Name" id="cname" placeholder="FullName"></td>
<th><h4>CHILD-AGE</h4></th><td><input type="number" name="ch1_Age" id="cage" placeholder="Age"></td></tr>
<tr><th><h4>CHILD-NAME</h4></th><td><input type="text" name="ch2_Name" id="c2name" placeholder="FullName"></td>
<th><h4>CHILD-AGE</h4></th><td><input type="number" name="ch2_Age" id="c2cage" placeholder="Age"></td>
<tr><th><h4>PREMIUM -FOR</h4></th><td><input CLASS="check" type="checkbox" name="premiumfor" id="premiumfor" value="MARRIED+CHILDREN">MARRIED+CHILDREN</td></TR>

</table> 
<br><br><br>

<marquee class="marquetag" width="100%" behavior="scroll" bgcolor="orenge"><strong>YOUR HEALTH INSURANCE PREMIUM IS <span class="amt">3450/-MONTH </span>YOUR COVER AMOUTN IS <span class="amt">750000/-</span></strong></marquee>

<br><br><br><br>
<CENTER><button class="register" type="submit" value="SUBMIT">SUBMIT</button></CENTER>
</form>
  </div>
  
  

<div id="About" class="tabcontent">
<form action="/custometrs" method="post">
 <table>
 <tr><th style="width:30%"><h3><span class="detailstxt"><u>CUSTOMER DETAILS</u></span></h3></th></tr>
 
 <tr><th><h4>UID</h4></th><td><input type="text" name="UID" id="ide" placeholder="id number"></td> 
<th><h4>NAME</h4></th><td><input type="text" name="Cmr_Name" id="name" placeholder="FullName"></td>
<th><h4>AGE</h4></th><td><input type="number" name="Cmr_Age" id="name" placeholder="Age"></td></tr>

<tr><th><h4>GENDER</h4></th><td><input type="text" name="Cmr_Gender" id="name" placeholder="Gender"></td>
<th><h4>MOBILE_NO</h4></th><td><input type="text" name="Cmr_mobile" id="number" placeholder="Number"></td>
<th><h4>E_MAIL</h4></th><td><input type="text" name="Cmr_Email" id="mail" placeholder="E mail"></td></tr>

<tr><th><h4>AADHAR</h4></th><td><input type="text" name="Cmr_Aadhar" id="aadhar" placeholder="Aadhar"></td>
<th><h4>ADDRESS</h4></th><td><input type="text" name="Cmr_Address" id="aadhar" placeholder="Address"></td>
<th><h4>QUALIFICATION</h4></th><td><input type="text" name="Cmr_qualification" id="qualif" placeholder="Qualification"></td></TR>
<tr><th><h4>POLICY_START_DATE</h4></th><td><input type="date" name="pstartdate" id="pstartdate" placeholder="S-Date"></td>
<th><h4>POLICY_END_DATE</h4></th><td><input type="date" name="penddate" id="penddate" placeholder="E-Date"></td>
<th><h4>POLICY PREMIUM</h4></th><td><input type="number" name="premium" id="premium" placeholder="Premium Amount"></td></TR>

<tr><th><h3><span class="detailstxt"><u>SPOUSE DETAILS</u></span></h3></th></tr>


<tr><th><h4>SPOUSE-NAME</h4></th><td><input type="text" name="Sp_Name" id="sname" placeholder="FullName"></td>
<th><h4>SPOUSE-AGE</h4></th><td><input type="number" name="Sp_Age" id="sage" placeholder="Age"></td>
<th><h4>SPOUSE-GENDER</h4></th><td><input type="text" name="Sp_Gender" id="sgender" placeholder="Gender"></td></tr>

<tr><th><h4>SPOUSE-MOBILE_NO</h4></th><td><input type="text" name="Sp_mobile" id="snumber" placeholder="Number"></td>
<th><h4>SPOUSE-E_MAIL</h4></th><td><input type="text" name="Sp_Email" id="smail" placeholder="E mail"></td>
<th><h4>S_AADHAR</h4></th><td><input type="text" name="Sp_Aadhar" id="saadhar" placeholder="AdharNo"></td></tr>

<tr><th><h4>S_ADDRESS</h4></th><td><input type="text" name="Sp_Address" id="saddress" placeholder="Address"></td>
<th><h4>S_QUALIFICATION</h4></th><td><input type="text" name="Sp_qualification" id="squalif" placeholder="Qualification"></td>
<th><h4>NO OF CHILDRENS</h4></th><td><input type="number" name="Sp_No_ofChildren" id="noofchids" placeholder="No.ofchildren"></td></tr>

<tr><th><h3><span class="detailstxt"><u>CHILD DETAILS</u></span></h3></th></tr>


<tr><th><h4>CHILD-NAME</h4></th><td><input type="text" name="ch1_Name" id="cname" placeholder="FullName"></td>
<th><h4>CHILD-AGE</h4></th><td><input type="number" name="ch1_Age" id="cage" placeholder="Age"></td></tr>
<tr><th><h4>CHILD-NAME</h4></th><td><input type="text" name="ch2_Name" id="c2name" placeholder="FullName"></td>
<th><h4>CHILD-AGE</h4></th><td><input type="number" name="ch2_Age" id="c2cage" placeholder="Age"></td>
<th><h4>NO_OF_DEPENDENTS</h4></th><td><input type="number" name="Sp_No_ofDependents" id="dependent1" placeholder="No.ofDependents"></td></tr>


<tr><th><h3><span class="detailstxt"><u>DEPENDENTS DETAILS</u></span></h3></th></tr>

<tr><th><h4>DEPENDENT1-NAME</h4></th><td><input type="text" name="Dp1_Name" id="dependent1name" placeholder="FullName"></td>
<th><h4>DEPENDENT1-QUALIFICATION</h4></th><td><input type="text" name="Dp1_qualification" id="d1qialif" placeholder="Qualifaction"></td>
<th><h4>DEPENDENT1-AGE</h4></th><td><input type="number" name="d1age" id="Dp1_Age" placeholder="Age"></td></tr>

<tr><th><h4>DEPENDENT1-RELATION</h4></th><td><input type="text" name="Relation" id="Relation" placeholder="Relation"></td>
<th><h4>DEPENDENT1-AADHAR</h4></th><td><input type="text" name="Dp1_Aadhar" id="d1aadhar" placeholder="AdharNo"></td>
<th><h4>DEPENDENT1-GENDER</h4></th><td><input type="text" name="Dp1_Gender" id="dp1gender" placeholder="Gender"></td></tr>

<tr><th><h4>DEPENDENT2-NAME</h4></th><td><input type="text" name="Dp2_Name" id="d2name" placeholder="FullName"></td>
<th><h4>DEPENDENT2-QUALIFICATION</h4></th><td><input type="text" name="Dp2_qualification" id="d2qialif" placeholder="Qualification"></td>
<th><h4>DEPENDENT2-AGE</h4></th><td><input type="number" name="Dp2_Age" id="d2age" placeholder="Age"></td></tr>

<tr><th><h4>DEPENDENT2-GENDER</h4></th><td><input type="text" name="Dp2_Gender" id="Relation" placeholder="Gender"></td>
<th><h4>DEPENDENT2-RELATION</h4></th><td><input type="text" name="Dp2_Relation" id="d2Relation" placeholder="Relation"></td>
<th><h4>DEPENDENT2-AADHAR</h4></th><td><input type="text" name="Dp2_Aadhar" id="d2aadhar" placeholder="AdharNo"></td></tr>
<tr><th><h4>PREMIUM -FOR</h4></th><td><input CLASS="check" type="checkbox" name="premiumfor" id="premiumfor" value="FAMILY">FAMILY</td></TR>

</table> 
<br><br><br>

<marquee class="marquetag" width="100%" behavior="scroll" bgcolor="orenge"><strong>YOUR HEALTH INSURANCE PREMIUM IS <span class="amt">4999/-MONTH </span>YOUR COVER AMOUTN IS <span class="amt">900000/-</span></strong></marquee>

<br><br><br><br>
<CENTER><button class="register" type="submit" value="SUBMIT">SUBMIT</button></CENTER>
</form>

</div>

<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
</body>
</html> 
