<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %> 
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>   
<%@ page import="java.sql.Statement" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.side{
            position: absolute;
            top:20%;
            left:2%;
            bottom: 20%;
            border-radius: 5px;
            background-color: white;
            padding: 20px;
            font-size: 20px;      
            width:75%;
            height:75px;
            font-family: Arial, Helvetica, sans-serif;
        } 
		.side1{
            position: absolute;
            top:12%;
            left:16%;
            bottom: 20%;
            border-radius: 5px;
            background-color: #E5E8E8;
            padding: 20px;
            font-size: 20px;      
            width:83%;
            height:88%;
            font-family: Arial, Helvetica, sans-serif;
        } 
        .side a{
            color: black;
            
        }

        .Firsttwo {
        width: 100%;
        padding: 5px 10px;
        margin: 2px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        box-shadow: 0 -5px 5px -5px #333;
        }
        .Third{
            width: 30%;
            padding: 3px 5px;
            margin: 2px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            box-shadow: 2px 4px #777777;

        }

        input[type=submit] {
        width: 90px;
        background-color: #4CAF50;
        color: white;
        padding: 9px 9px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        }

        input[type=submit]:hover {
        background-color: #45a049;
        }
       

        
body {
  margin: 0;
  font-family:comic sans MS, Helvetica, sans-serif;
}

.topnav {
   overflow : hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
.topnav1 {
   overflow : hidden;
  background-color:white;
}

.topnav1 a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav1 a:hover {
  background-color: #ddd;
  color: black;
}

.topnav1 a.active {
  background-color: #04AA6D;
  color: black;
}
.c
{
	
	float:right;
	
}
.c1
{
	
	float:left;
	
}
#mySidebar  {
  height: 100%;
  width: 200px;
  position:absolute;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #333;
  overflow-x: hidden;
  padding-top: 16px;
}
.a1{
font-family:comic sans MS;
}
#mySidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #9d9e9d;
  display: block;
}

#mySidebar a:hover {
  background-color: #ddd;
  color: black;
}
.topright {
                position: absolute;
                top: 45px;
                right: 16px;
                font-size: 15px;
              }
              .topright input[type=text]{
                width: 270px;
              }

a:link {
  text-decoration: none;
}

a:visited {
  text-decoration: none;
}

                #mySidebar .closebtn {
                position: absolute;
                top: 0;
                right: 25px;            
                overflow: hidden;
                border: none;
                background-color: #333;
                color: #f2f2f2; 
                text-align: center;
                text-decoration: none;
                font-size: 25px;
                cursor: pointer;
                }
              .closebtn a:hover {
                background-color: #ddd;
                color: black;
              }

              .h5{
                color: #f2f2f2;
                font-size: 18px;
              }
			  .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                padding-top: 100px; /* Location of the box */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                }

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 25%;
  height: 39%;
}

.modal1 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 10px;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content1 {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 28%;
}



/* The Close Button */
.close {
  color:black;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

/* The Close1 Button */
.close1 {
  color:black;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close1:hover,
.close1:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
			  #container{
			  height:200px;
			  width:200px;
			 display:none;
			 position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
			  background-color:pink;}
              .button1 {
            border: none;
            color: black;
            padding: 15px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            }

</style>
</head>
<body >
<div class="a1">
<div class="side1">
<div class="topright">
   <input type="text" class="a1" placeholder="Search" name="search"><button type="submit"><i class="fa fa-search"></i></button>
</div>
<br>
<h3 class="a1">Notes</h3>
<div class="topnav1">
<div class="a1">
          <button id="myBtn" class="#">+</button>
          <%
      Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/new1","root","root");
      Statement statement = connection.createStatement() ;
      ResultSet resultset = statement.executeQuery("select * from notes") ;
 %>
      
 <% while(resultset.next()){ %>
     <%= resultset.getString(1) %>
 <% } %>
		  <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
  <div class="a1">
    <span class="close">&times;</span>
    <form method="post" action="notebook">
     <%
      Connection connection1 = DriverManager.getConnection( "jdbc:mysql://localhost:3306/new1","root","root");
      Statement statement1 = connection.createStatement() ;
      ResultSet resultset1 = statement.executeQuery("select * from notesdesc") ;
 %>
         <% while(resultset1.next()){ %>
          <input class ="a1" value=" <%= resultset1.getString(1) %>"><br>
          <input class ="a1" value=" <%= resultset1.getString(2) %>"><br>
          <input class ="a1" value=" <%= resultset1.getString(3) %>"><br>
          <input class ="a1" value=" <%= resultset1.getString(4) %>"><br>
          <input class ="a1" value=" <%= resultset1.getString(5) %>"><br>
          <input class ="a1" value=" <%= resultset1.getString(6) %>"><br>
           <% } %>
    </form>

  </div>
</div>
</div>
		  <div class="c"><a href="delete">delete</a></div>
		  <div class=" c"> <button id="myBtn1"><i class="fa fa-edit" aria-hidden="true">edit</i></button></div>
          <div id="myModal1" class="modal1">

            <!-- Modal content -->
            <div class="modal-content1">
            <div class="a1">
              <span class="close1">&times;</span>
              <form method="post" action="edit">
              <p align="center">Edit Notes</p>
              <br>
              <p align="center"><input type="text" name="editname" placeholder="edit name" required="required" /></p>
              <br>
              <p style="text-align:center"><button type="submit">edit</button></p>
              </form>
            </div>
          </div>
          </div>
		  
		  
		  
		  </div>
        </div>
		</div>
        </div>
    <div id="mySidebar">
        <button class="closebtn" onclick="slide_close()"><a>&times;</a></button>
        <p href="#">    </p>
        <p href="#"> .. </p>
  

        <h5 class="h5">Hai User!</h5>
        <a href=notebooks.jsp>NoteBooks</a>
        <a href=notes.jsp >Notes</a>
        <a href=edituser.jsp >Edit User</a>
      </div>    

<div class="topnav">

   <!-- <button  onclick="w3_open()">&#9776;</button> -->
  <button><i class="fa fa-user-circle-o fa-4x" onclick="slide_open()"></i></button>
 <div class=" c"> <a href="logoutservlet"><i class="fa fa-sign-out fa-2x" aria-hidden="true"></i>logout</a></div>
  <div class=" c"><a href=" notify"><i class="fa fa-bell-o fa-2x" aria-hidden="true"></i></a></div>
</div>
</div>
<div style="padding-left:16px">

</div>
</div>
</div>
<script>
    function slide_open() {
      document.getElementById("mySidebar").style.display = "block";
    }
    
    function slide_close() {
      document.getElementById("mySidebar").style.display = "none";
    }
	var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function() {
    modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
    modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
    }
   
    //This is for Edit modal
    
    var modal1 = document.getElementById("myModal1");


    // Get the button that opens the modal
    var btn1 = document.getElementById("myBtn1");

    // Get the <span> element that closes the modal
    var span1 = document.getElementsByClassName("close1")[0];

    // When the user clicks the button, open the modal 
    btn1.onclick = function() {
    modal1.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span1.onclick = function() {
    modal1.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
    }
    </script>

</body>
</html>