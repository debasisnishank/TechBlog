<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 8:31:31 PM
    Author     : ASUS
--%>

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <%@include file="navbar.jsp" %>


        <div class="container-fluid  p-0 m-0">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-3">Welcome guys</h3>


                    <p>A programming language is a system of notation for writing computer programs.[1] Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language. </p>
                    <p>The description of a programming language is usually split into the two components of syntax (form) and semantics (meaning), which are usually defined by a formal language. Some languages are defined by a specification document (for example, the C programming language is specified by an ISO Standard) while other languages (such as Perl) have a dominant implementation that is treated as a reference. Some languages have both, with the basic language defined by a standard and extensions taken from the dominant implementation being common. </p>
                    <button class="btn btn-outline-light btn-lg"><span class=" 	fa fa-user-plus"></span>Start ! its Free</button>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class=" 	fa fa-user-circle-o fa-spin"></span>Login</a>


                </div>
            </div>



        </div>

<!--        //cards-->
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="card" >
                       
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn text-white primary-background">Read More !</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                       
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn text-white primary-background">Read More !</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                       
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn text-white primary-background">Read More !</a>
                        </div>
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-md-4">
                    <div class="card" >
                       
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn text-white primary-background">Read More !</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                       
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn text-white primary-background">Read More !</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                       
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn text-white primary-background">Read More !</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!--Javascript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js">

        </script>   
    </body>
</html>
