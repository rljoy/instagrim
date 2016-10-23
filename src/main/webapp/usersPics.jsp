<%-- 
    Document   : usersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Ronan Joy
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.rlj.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <header>        
        <h1>InstaGrim</h1>
        <h2>Your world in Black and White</h2>
        </header>        
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/Upload">Upload</a></li>                
            </ul>
        </nav>
 
        <article>
            <h1>Your Pics:</h1>
            
        <%
            //look in linked list for user pics
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        
        <p>No Pictures found</p>
        
        <%
        } else {
            //show pictures
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
            Pic p = (Pic) iterator.next();
        %>
        
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/>
        
        <%
            }
            }
        %>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
