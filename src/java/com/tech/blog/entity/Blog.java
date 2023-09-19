/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entity;

import java.sql.Timestamp;

/**
 *
 * @author ASUS
 */
public class Blog {

    private int bid;
    private String bTitle;
    private String bContent;
    private String bCode;
    private String bPic;
    private Timestamp bDate;
    private int catId; //foreign key
    private int userId;

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getbTitle() {
        return bTitle;
    }

    public void setbTitle(String bTitle) {
        this.bTitle = bTitle;
    }

    public String getbContent() {
        return bContent;
    }

    public void setbContent(String bContent) {
        this.bContent = bContent;
    }

    public String getbCode() {
        return bCode;
    }

    public void setbCode(String bCode) {
        this.bCode = bCode;
    }

    public String getbPic() {
        return bPic;
    }

    public void setbPic(String bPic) {
        this.bPic = bPic;
    }

    public Timestamp getbDate() {
        return bDate;
    }

    public void setbDate(Timestamp bDate) {
        this.bDate = bDate;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getUserId() {
        return userId;
    }

    public Blog(int bid, String bTitle, String bContent, String bCode, String bPic, Timestamp bDate, int catId, int userId) {
        this.bid = bid;
        this.bTitle = bTitle;
        this.bContent = bContent;
        this.bCode = bCode;
        this.bPic = bPic;
        this.bDate = bDate;
        this.catId = catId;
        this.userId = userId;
    }

    public Blog(String bTitle, String bContent, String bCode, String bPic, Timestamp bDate, int catId, int userId) {
        this.bTitle = bTitle;
        this.bContent = bContent;
        this.bCode = bCode;
        this.bPic = bPic;
        this.bDate = bDate;
        this.catId = catId;
        this.userId = userId;
    }

    public Blog() {
    }

}
