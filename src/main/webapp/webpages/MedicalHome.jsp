<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MediCover</title>

<style type="text/css">
.marquetag{

font-size: 22px;
color: black;
padding-top: 10px;
padding-bottom: 10px;
}
.register {

background-color: gold;
color:black;
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
background-color: green;
color: white;

}

th, td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
}

.bg {
  /* The image used */
  background-image: url("img_girl.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
body {
  background-image: url('https://cdn.pixabay.com/photo/2019/05/28/18/44/healthcare-4235817_960_720.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
.head {
color:navy;
font-weight: bold;
border:none;

}
.head:hover{
box-shadow:5px 5px 10px black;
color:black; 
}
 #GFG {
            text-decoration: none;
        }
        .amt{
color:maroon;
}

</style>


</head>
<body  >
<p><center><h1 class="head">HEALTH INSURANCE</h1> </center></p>
<br><br><br><br><br>
<table align="center">
  
<tr ><th><button class="register" ><a id="GFG" href="/webpages/Takepolicy.jsp"><strong>TAKE A POLICY</strong></a></button></th></tr>
<tr><th><button  class="register" ><a id="GFG" href="/webpages/Userdata.jsp"><strong>USERDATA</strong></a> </button></th></tr>
<<tr><th><button  class="register" ><a id="GFG" href="/webpages/Claim.jsp"><strong>CLAIMS</strong></a></button></th></tr>
<tr><th><button class="register"  ><a id="GFG" href="/webpages/agentclaimprocesspage.jsp"><strong>AGENT-LOGIN</strong></a></button></th></tr>
<tr><th><button class="register"  ><a id="GFG" href="/webpages/About.jsp"><strong>ABOUT</strong></a></button></th></tr>
<tr><th><button  class="register"><a id="GFG" href="/webpages/Contact_us.jsp"><strong>CONTACT_US</strong></a></button></th></tr>
</table>
<br><br><br>

<!-- <marquee class="marquetag" width="100%" behavior="scroll" bgcolor="yellow"><strong>FOR CLAIMING ASSISTENCE CLICK ON <span class="amt">USERDATA</span> CHECK YOUR DETAILS AND PROCEED </strong></marquee> -->

</body>
</html>