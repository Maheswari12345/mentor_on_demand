<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="java.util.*,com.mentor.model.*"
    pageEncoding="ISO-8859-1"%>
     <!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>courses list</title>
<link rel="stylesheet" href="styles/style.css">
 <style>

 .header{
    background-color: 	#0044cc;
    width:100%;
    font-size: 50px;
    text-align: center;
    margin-left:0px;
    padding:0px;
    color:#ffff99;
}

#logo{
    padding-right:0px;
    display:inline-block;
    height:50px;
    width:50px;
}
.ul {
list-style-type: none;
margin: 0;
padding: 0;
overflow: hidden;
background-color: #99c2ff;

}
body{
    background-color:#cccccc;
}

.li {
float: left;
}

.hyperlink{
display: block;
color:black;
text-align: center;
font-size:20px;
padding: 14px 16px;
text-decoration: none;
}

li a:hover {
background-color: #e0e0d1;
}
.navbar{
 padding-left:150px;
 margin-right:100px;
 margin-top:80px;
align-content: center;
}
.floatright-list{
float:right;
padding-right:40px;
}
.import{
    text-align: center;
    padding-top:120px;
    font-size:40px;
    
}
.excelupload{
    padding-left:500px;
}
.downloadsample{
    margin-top:90px;
    padding-left:700px;
}
.a{
    color:black;
    text-decoration:none;
}
.summaryuploadheading{
    text-align:center;
    padding-top:120px;
}
.summary{
    padding-left:700px;
}
.okbutton{
    padding-left:700px;
    padding-top:140px;
}
.buttonconfirm{
    padding: 12px 28px;
}
.container-addcompany{
    margin-left:150px;
    margin-right:100px;
    background-color: #fff;
    padding:0px;
    height:700px;
    margin-top:0px;
   
    

}
.addcompany-heading{
    padding-top:120px;
    text-align:center;
    font-family: 'Times New Roman', Times, serif;
    font-size: 40px;
    margin-top:0px;
}
.addcompany{
    padding-left:500px;
}
.savebutton{
    padding-left:750px;
    padding-top:140px;

}
.compare{
    padding-left:400px;
    padding-top:120px;
}
.generatemap-button{
    padding-left:900px;
    padding-top:140px;

}
.manage{
    padding-left:400px;
    font-size: 25px;
}
.companylist{
    padding-top:60px;
    text-align:center;
    font-size: 40px;
    
}
.container{
    margin-left:150px;
    margin-right:100px;
    background-color: #fff;
    height:500px;
    padding:0px;
}
.row {
    display: flex;
  }
  
  /* Create three equal columns that sits next to each other */
  .column {
    flex: 33.33%;
    padding-left: 50px;
    padding-top:70px;
  }
  .about-h1
  {
      padding-top:50px;
      text-align:center;
  }
  article{
      
      padding-top:50px;
      padding-left:70px;
      font-size: 30px;

  }
  .containerexcel{
    margin-left:150px;
    margin-right:100px;
    background-color: #fff;
    padding:0px;
    height:700px;

  }
  .button4 {
      background-color: #e7e7e7;
       color: black;
       width:70px;
       height:40px;
    } 
.about{
    text-decoration: none;
}
td{
    font-family: 'Times New Roman', Times, serif;
    font-size: 30px;
}
.container-comparison{
   
    margin-right:100px;
    background-color: #fff;
    padding:0px;
    height:1000px;
    width:100%;
}
.container-upload{
    margin-left:150px;
    margin-right:100px;
    background-color: #fff;
    padding:0px;
    height:600px;

}
.uploadheading{
    margin-top:0px;
    text-align:center;
    font-family: 'Times New Roman', Times, serif;
    font-size: 40px;

}
.summary-upload{
    padding-left:500px;

}
  .bg{
          background-color: white;
      }
 
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  align:center;
  margin-left:500px;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.link-dec
{
	text-decoration:none;
}
.no-link
{
text-decoration:none;
}

 </style>




</head>

<body class="bg">
        <div class="header">


               MENTOR ON DEMAND  <img src="images/mentorlogo.jpg" id="logo">
            
            </div>

       
        

<h3 class="companylist">LIST OF COURSES</h3>



<%
List proposelist=(List)request.getAttribute("proposelist");
System.out.println(proposelist);


%>
           
	                                
        
  <table id="customers">
      <tr>
        <th>STUDENT NAME</th>
        <th>ACCEPT</th>
        <th>REJECT</th>
      
        
      </tr>
      <% for(int i=0;i<proposelist.size();i++){
	       Student s=(Student)proposelist.get(i);
	     
	       %>
       <tr>
         
          <td><%=s.getUsername()%></td>
        
        
          <td><a href="/acceptpropose" class="no-link">accept</a></td>
          <td><a href="/acceptpropose" class="no-link">reject</a>


      </tr><% }%>



  
  </table>
  
 




    
    
</body>
</html>




