<%@page import="com.tech.blog.entity.Blog" %>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.BlogDao"%>
<div class="row">
    <%
        BlogDao b = new BlogDao(ConnectionProvider.getConnection());
        List<Blog> blogs = b.getAllBlog();
        for (Blog bb : blogs) {

    %>
    <div class="col-md-6 mt-2">
        <div class="card">
             <img src="blog_pics/<%= bb.getbPic()%>" class="card-img-top" alt="...">
            <div class="card-body">
                <b><%= bb.getbTitle()%></b>
                <p><%= bb.getbContent()%></p>
                <p><%= bb.getbCode()%></p>
            </div>
        </div>
    </div>

    <%
        }


    %>
</div>