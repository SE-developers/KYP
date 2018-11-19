<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>knowYourPlace</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../bootstrap/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
<script src="main.js"></script>

<style>
     .h1{
    background-image: url("bed-bedroom-cozy-164595.jpg");
    background-size: cover;
    padding: 15px;
    color: white;
    font-size: 18px;
    text-align: left;
    position: relative;
    }
    .h1 a{
        text-decoration: none;
        color: white;
    }

    .container{
            position: relative;
            width: 50%;
        }
        .image {
            opacity: 1;
             display: block;
             width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
        }
        .middle{
            transition: .5s ease;
            opacity: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            
        }
        .container:hover .image {
            opacity: 0.3;
        }

        .container:hover .middle {
            opacity: 1;
        }

        .text {
            background-color: #a8bbc7;
            color: black;
            font-size: 16px;
            padding: 16px 32px;
            border-radius: 20px;
        }
        .container img{
             width: 400px;
             border-radius: 20px;
             border: 1px solid black; 
        }
        td{
            padding: 50px;
        }
        .footer{
            position: absolute;
            right: 0;
            left: 0;
            bottom: 0;
        }
        table{
            margin-top: 18px;
        }
        body{
            /* position: relative; */
            background-color: #f6f5f5;
        }
        .book-img img{
            width: 1000px;
            height: 500px;
        }
        .book-img{
            /* position: absolute;
            top: 80px; */
        }
        .details{
            position: absolute;
            width: 510px;
            right: 0;
            border: 2px solid black;
            overflow: hidden;
            top: 80px;
            text-align: center;
        }
        .check{
            overflow: hidden;
        

        }
        td{
            padding: 5px;
            width: px;
            outline: none;
        }
        tr{
            line-height: 2px;
        }
        .select{
            width: 150px;
        }
        .amenities{
            /* position: absolute; */
            bottom: 0;
            left:50px;
            top: 600px;
        }
        /* .footer{
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            top: 800px;
        } */
        /* .parent{
            position: relative;
        } */
        
    </style>
</head>
<body>
<% 
       response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1
       response.setHeader("Pragma","no-cache"); //HTTP 1.0
       response.setHeader("Expires","0"); //Proxies
    %>
    <% String username = (String)session.getAttribute("username"); %>
    
	<!--header-->
	<header class="header">
	    <h1>knowYourPlace</h1>
	    <% if(username==null) { %>
	       <button class="btn"><b><a href="log.jsp">LogIn/SignUp</a></b></button>
	    <% } else { %>
	      <h2>Hello <u><%=username%></u></h2>
	      <form action="logout">
	        <input type="submit" value="Logout"/>
	      </form>
	    <% } %>
		
	</header>
	
	<!--navigation bar-->

        <nav class="nav">
            <ul>
                    <li>
                        <a href="index.html" class="active">
                        <i class="fa fa-home"></i>HOME</a>
                    </li>
                    <li class="hov">
                        <a href="aboutus.html">
                                <i class="fa fa-id-card"></i>About Us</a>
                    </li>
                    <li class="hov">
                        <a href="contactus.html">
                                <i class="fa fa-envelope"></i>Contact Us</a>
                    </li>
            </ul>
        </nav>
        
        
	
</body>


</html>