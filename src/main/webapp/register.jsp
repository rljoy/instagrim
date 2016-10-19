<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
        <h1>InstaGrim</h1>
        <h2>Your world in Black and White</h2>
        </header>        
        <article>
            <h3>Register as user:</h3>
            
            <form method="POST"  action="Register">
                <ul>
                    
                    <li>Username<input pattern=".{5,10}" type="text" name="username" required title="username must be between 5 to 10 characters long"></li>
                   <li>Password<input pattern=".{8,16}" type="password" name="password" required title="password must be between 8 to 16 characters long"></li>
                    
                </ul>
                <br/>
                <input type="submit" value="Register"> 
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
