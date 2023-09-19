<%-- 
    Document   : error_page
    Created on : 11 Sep, 2023, 7:08:17 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry something went wrong</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styles.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 95%, 66% 89%, 25% 91%, 0 97%, 0 0);
            }
        </style>

    </head>
    <body>
        <div class="container text-center">
            <img class="img-fluid mt-5" src="image/warning.png" />
            <h3 class="display-3">Sorry something went wrong...</h3>
            <%= exception %>
            <a href="index.jsp" class="btn primary-background btn-lg mt-3 text-white">Home</a>
        </div>
    </body>
</html>
