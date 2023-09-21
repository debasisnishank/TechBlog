/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;

import java.sql.*;

/**
 *
 * @author ASUS
 */
public class LikeDao {

    Connection con;

    public LikeDao(Connection con) {
        this.con = con;
    }

    public boolean insertLike(int bid, int id) {
        boolean result = false;
        try {
            String q = "insert into like_table(bid,id) values (?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, bid);
            ps.setInt(2, id);
            ps.executeUpdate();
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public int countLikeOnPost(int bid) {
        int count = 0;

        try {
            String q = "select count(*) from like_table where bid = ?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, bid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);//rs.getInt("count(*)")

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    public boolean isLikedByUser(int bid, int id) {
        boolean f = false;
        try {
            PreparedStatement ps = this.con.prepareStatement("select * from like_table where bid = ? and id = ?");
            ps.setInt(1, bid);
            ps.setInt(2, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean deleteLike(int bid, int id) {
        boolean f = false;
        try {
            PreparedStatement ps = this.con.prepareStatement("delete from like_table where bid = ? and id = ?");
            ps.setInt(1, bid);
            ps.setInt(2, id);
            ps.executeUpdate();
            f = true;

        } catch (SQLException e) {
        }

        return f;
    }

}
