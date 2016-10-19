<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.rlj.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <h1 style="font-family:Blackadder ITC;"><center>Instagrim</center></h1>
            <h2>Your world in Black and White...</h2>
        </header>
        <nav>
            
            <ul>

                
                
                
                <li><a href="/Instagrim/Upload">Upload</a></li>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getloggedin()) {
                    %>

                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images
                    <%}
                       }else{
                    %>
                <li><a href="/Instagrim/Register">Register</a></li>
                                
                <li><a href="/Instagrim/Login">Login</a></li>
                
                <%
                            
                            
                    }%>
            </ul>
            
        </nav>
        <footer>
            <ul>
                <li><a href="/Instagrim">Home</a></li>
                &COPY; Ronan Joy
            </ul>
        </footer>
    </body>
</html>
