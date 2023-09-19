<%@page import="com.tech.blog.entity.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.BlogDao"%>
<%@page import="com.tech.blog.entity.Blog"%>
<%@page import="com.tech.blog.entity.User"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }

%>
<%    int post_id = Integer.parseInt(request.getParameter("blog_id"));

    BlogDao bd = new BlogDao(ConnectionProvider.getConnection());
    Blog b = bd.getBlogByBlogId(post_id);

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= b.getbTitle()%></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styles.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 95%, 66% 89%, 25% 91%, 0 97%, 0 0);
            }
            .post-title{
                font-weight: 100;
                font-size: 30px;
            }
            .post-content{
                font-weight:100;
                font-size: 25px;
            }
            .post-code{
                
            }
            .post-date{
                font-style: italic;
                font-weight: bold;
            }
            .post-user-info{
                font-size: 20px;
            }
            .row-user{
                border: 1px solid #cccccc;
                padding-top:15px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-leanpub"></span>TechBlog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="profile.jsp"><span class="fa fa-medium"></span>NSK</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            <span class="fa fa-wpforms"></span>  Categoriees
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Programming Language</a>
                            <a class="dropdown-item" href="#">Projects</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">DSA</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><span class="fa fa-chain"></span>Contact</a>
                    </li>
                    <li class="nav-item">
                        <a data-target="#add-post-modal" data-toggle="modal" class="nav-link" href="#"><span class="fa fa-asterisk "></span>Make post</a>
                    </li>

                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle-o"></span><%= user.getName()%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span>Logout</a>
                    </li>
                </ul>

            </div>
        </nav>

        <!--main content of body-->

        <div class="container">
            <div class="row my-4">
                <div class="col-md-8 offset-md-2">
                    <div class="card">
                        <div class="card-header primary-background text-white">
                            <h4 class="post-title"><%= b.getbTitle()%></h4>
                        </div>

                        <div class="card-body">
                            <img src="blog_pics/<%= b.getbPic()%>" class="card-img-top my-2" alt="...">
                            <div class="row my-3 row-user">
                                <div class="col-md-8">
                                    <p class="post-user-info"><a href="#">nsk</a> has posted</p>
                                </div>
                                <div class="col-md-4">
                                    <p class="post-date"><%= b.getbDate().toLocaleString() %></p>
                                </div>
                            </div>
                            <p class="post-content"><%=b.getbContent()%></p>
                            <br>
                            <br>
                            <div class="post-code">
                                <pre><%= b.getbCode()%></pre>
                            </div>
                        </div>

                        <div class="card-footer primary-background">
                            <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up"></i><span>10</span></a>


                            <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i><span>20</span></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>




        <!--end of main content of body-->
        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pics/<%= user.getProfile()%>" alt="img" style="width:150px; height:150px; border-radius: 50%" />
                            <br>
                            <h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getName()%></h5>
                            <!--//details-->
                            <div  id="profile-detail"> 
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID:</th>
                                            <td><%= user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Email :</th>
                                            <td><%= user.getEmail()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender :</th>
                                            <td><%= user.getGender()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Status :</th>
                                            <td><%= user.getAbout()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Registered date :</th>
                                            <td><%= user.getDateTime().toString()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--profile edit-->
                            <div id="profile-edit" style="display:none;">
                                <h3 class="mt-2">Edit here</h3>
                                <form action="EditServlet" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID :</td>
                                            <td><%=user.getId()%></td>
                                        </tr>

                                        <tr>
                                            <td>Email :</td>
                                            <td><input type="email" class="form-control" name="user_email" value="<%=user.getEmail()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Password :</td>
                                            <td><input type="password" class="form-control" name="user_password" value="<%=user.getPassword()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Name :</td>
                                            <td><input type="text" class="form-control" name="user_name" value="<%=user.getName()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Gender :</td>
                                            <td><%=user.getGender().toUpperCase()%></td>
                                        </tr>
                                        <tr>
                                            <td>About :</td>
                                            <td><textarea class="form-control" name="user_about">
                                                    
                                                    <%=user.getAbout()%>
                                                
                                                </textarea></td>
                                        </tr>
                                        <tr>
                                            <td>New Profile:</td>
                                            <td>
                                                <input type='file' name='image' class='form-control'>
                                            </td>
                                        </tr>



                                    </table>
                                    <div class="container">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>

                    </div>
                </div>
            </div>
        </div>

        <!--end of profile modal-->





        <!--add post modal-->

        <!-- Modal -->
        <div class="modal fade" id="add-post-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Give the Post details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form id="add-post-form" action="AddPostServlet" method="post">
                            <div class="form-group"> <select class="form-control" name="cid">
                                    <option selected disabled="true">---select category---</option>
                                    <%

                                        BlogDao blogDao = new BlogDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> list = blogDao.getAllCategories();
                                        for (Category c : list) {
                                    %>
                                    <option value="<%= c.getCid()%>"><%= c.getName()%></option>
                                    <%
                                        }
                                    %>

                                </select>
                            </div>

                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="enter post title" name="bTitle">
                            </div>
                            <div class="form-group">
                                <textarea style="height: 200px;" class="form-control" type="text" row="5" placeholder="enter post content" name="bContent" ></textarea>
                            </div>
                            <div class="form-group">
                                <textarea style="height: 200px;" class="form-control" type="text" row="5" placeholder="enter your program(if any)" name="bCode" ></textarea>
                            </div>
                            <div class="form-group">
                                <label>select your pic..</label>
                                <br>
                                <input type="file" name="bPic">
                            </div>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Post</button>
                            </div>


                        </form>
                    </div>

                </div>
            </div>
        </div>







        <!--end post modal-->


        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js">
        </script>   
        <script>
            $(document).ready(function () {
                let editStatus = false;

                $('#edit-profile-button').click(function () {
                    if (editStatus == false) {
                        $('#profile-detail').hide();
                        $('#profile-edit').show();
                        editStatus = true;
                        $(this).text("Back");
                    } else {
                        $('#profile-detail').show();
                        $('#profile-edit').hide();
                        editStatus = false;
                        $(this).text("Edit");
                    }
                });
            });
        </script>
        <!--add post js-->
        <script>
            $(document).ready(function (e) {
//                alert("Loaded..");
                $('#add-post-form').on('submit', function (event) {
                    //this code gets called when code is submitted
                    event.preventDefault();
                    console.log("submittted");
                    let form = new FormData(this);
                    //now requesting to server
                    $.ajax({
                        url: "AddPostServlet",
                        type: "POST",
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success
                            console.log(data);
                            if (data.trim() == 'done') {
                                swal("Good Job", "Saved successfully", "success");
                            } else {
                                swal("Error!", "Something went wrong!", "error");
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                            swal("Error!", "Something went wrong!", "error");

                        },
                        //These two false,as to send the photos, these two value should be false
                        processData: false,
                        contentType: false


                    });


                });
            });

        </script>

    </body>
</html>
