<%-- 
    Document   : signup
    Created on : 13 Jul, 2018, 12:00:19 PM
    Author     : settu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            .left{
                display: inline-block;
            }
            .left img{
                height: 500px;
                width: 700px;
            }
            .right{
                display: inline-block;
                float: right; 
                margin-right: 15%;
                margin-top: 50px;
            }
            input[type="text"],[type="password"],[type="email"]{
                margin: 5px;
                padding: 5px;
                height: 25px;
                width: 300px;
                font-size: 3vh;
                outline: none;
                border:none; background-color: transparent;
                border-bottom: 2px solid grey;
            }
            input[type="submit"]{
                font-family: sans-serif; 
                margin-left: 85px;
                margin-top: 20px;
                height: 40px;
                width: 150px;
                font-size: 4vh;
                
            }
            h1{
                font-size: 56px;
                font-style: oblique;
                margin-top:100px;
               }
            .right .signup{
                background-color: whitesmoke;
                padding: 20px;
                padding-bottom: 100px;
                box-shadow: 2px 2px 10px;
                margin-top: -100px;
            }
            h2{
                font-size: 30px;
                font-family: serif;
                font-weight: 900;
                }
            
                header{
                    margin-top:50px;    
                }
        </style>
    </head>
    <body>
         <header>
            <h1>PHARMA C AND F AGENCY</h1>
        </header>
        <div class="left">
            <img src="pharma logo.jpg">    
        </div>
        <div class="right">
  
            <div class="signup">
                <h2>SignUp</h2>
                <form action="Signup" method="post">
                    <input type="text" name="uname" placeholder="Username"><br>
                    <input type="password" name="pass" placeholder="password"><br>
                    <input type="email" name="email" placeholder="emailID"><br>
                    <input type="text" name="phno" placeholder="phone no"><br>
                    <input type="text" name="address" placeholder="address"><br>
                    <input type="submit" value="SignUp">
                </form>
                 <a href="index.html">login</a>
            </div>
            
        </div>
        
        <footer>
            
        </footer>
    </body>
</html>
