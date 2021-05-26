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
            left:40%;
            bottom: 20%;
            border-radius: 5px;
            background-color: whitesmoke;
            padding: 20px;
            font-size: 20px;      
            width:500px;
            height:450px;
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
.c
{
	
	float:right;
	
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
.a{
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

</style>
</head>
<body>
<form method="post" action="edituser">
<div class="side">
<div class="a">
            <h3><center>Edit User</center></h3>
            <a>UserName</a><br>
            <input type="text" class="Firsttwo" name="username" placeholder="username"><br><br>
            <a>MobileNumber</a><br>
            <input type="number" class="Firsttwo" name="mobile" placeholder="mobile number"><br>
            <br>
            <a>Email</a>  <input type="text" name="email" class="Third" placeholder="email">
              <a>Password</a>  <input type="text" name="password" class="Third" placeholder="password"> <br>
            <br>
            <center><input type="submit" value="Save"></center>
        </div>
        </div>
        </form>
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
    </script>

</body>
</html>