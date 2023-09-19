/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;

import com.tech.blog.entity.Category;
import java.sql.*;
import java.util.ArrayList;
import com.tech.blog.entity.Blog;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class BlogDao {

    Connection con;

    public BlogDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {
            String q = "select * from categories";
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                int cid = rs.getInt("cid");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Category c = new Category(cid, name, description);
                list.add(c);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean savePost(Blog b) {
        boolean flag = false;
        try {
            String q = "insert into blogs(bTitle,bContent,bCode,bPic,catId,userId) values (?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, b.getbTitle());
            ps.setString(2, b.getbContent());
            ps.setString(3, b.getbCode());
            ps.setString(4, b.getbPic());
            ps.setInt(5, b.getCatId());
            ps.setInt(6, b.getUserId());
            ps.executeUpdate();
            flag = true;
        } catch (Exception e) {

        }
        return flag;
    }

    //get all the post
    public List<Blog> getAllBlog() {
        List<Blog> list = new ArrayList<>();
        //fetch all post
        try {
            PreparedStatement ps = con.prepareStatement("select * from blogs order by bid desc");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int bid = rs.getInt("bid");
                String bTitle = rs.getString("bTitle");
                String bContent = rs.getString("bContent");
                String bCode = rs.getString("bCode");
                String bPic = rs.getString("bPic");
                Timestamp date = rs.getTimestamp("bDate");
                int catId = rs.getInt("catId");
                int userId = rs.getInt("userId");
                Blog blog = new Blog(bid, bTitle, bContent, bCode, bPic, date, catId, userId);
                list.add(blog);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    //get the post as per the id
    public List<Blog> getBlogByCatId(int catId) {
        List<Blog> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("select * from blogs where catId = ?");
            ps.setInt(1, catId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int bid = rs.getInt("bid");
                String bTitle = rs.getString("bTitle");
                String bContent = rs.getString("bContent");
                String bCode = rs.getString("bCode");
                String bPic = rs.getString("bPic");
                Timestamp date = rs.getTimestamp("bDate");
                // int cid = rs.getInt("catId");
                int userId = rs.getInt("userId");
                Blog blog = new Blog(bid, bTitle, bContent, bCode, bPic, date, catId, userId);
                list.add(blog);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public Blog getBlogByBlogId(int blogId) {

        Blog blog = null;
        try {
            String q = "select * from blogs where bid = ?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, blogId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int bid = rs.getInt("bid");
                String bTitle = rs.getString("bTitle");
                String bContent = rs.getString("bContent");
                String bCode = rs.getString("bCode");
                String bPic = rs.getString("bPic");
                Timestamp date = rs.getTimestamp("bDate");
                int cid = rs.getInt("catId");
                int userId = rs.getInt("userId");
                blog = new Blog(bid, bTitle, bContent, bCode, bPic, date, cid, userId);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return blog;
    }

}
