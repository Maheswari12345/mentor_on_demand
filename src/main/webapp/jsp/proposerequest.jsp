<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html >
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>Add Mentor Details</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
        <div class="header">


                MENTOR ON DEMAND  <img src="images/logo.png" id="logo">
            
            </div>
<div class="navbar">
        <ul class="ul"> 
               
              
                <li class="floatright-list"><a href="/mentorlogin" class="hyperlink">Login</a></li>
        </ul>
        
</div>
<div class="container-addcompany"> 
<h3 class="addcompany-heading">USER CONFIRMATION</h3>
<div class="addcompany">
    <form:form method="POST" action="/proposetraining"
  modelAttribute="s">
        <table cellspacing="10px" width="60%">
            <tr>
             
             <td ><label for="mentorName">USER NAME</label></td>
            
             <td ><form:input type="text" id="username" name="username" path="username"/></td>
            </tr>
              <tr>
             
           
        </table>
   
</div>
<div class="savebutton">
        <input type="submit" value="save" name="ok" width="30px" class="buttonconfirm">
        </div>  
    </div>
     </form:form>
    
    
</body>
</html>
