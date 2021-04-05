/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.g4furnitureshop.dao;

import com.g4furnitureshop.model.productlist;
import com.g4furnitureshop.model.producttype;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class productlistDAO {

    private UtilityConnection uc;

    public productlistDAO() {
        uc = new UtilityConnection();
        uc.connect();
    }

    public boolean addNew(productlist product) {
        String query = "INSERT INTO productlist(product_name,product_detail,price,brand_id,producttype_id,images) VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = uc.getConn().prepareStatement(query);
            ps.setString(1, product.getProduct_name());
            ps.setString(2, product.getProduct_detail());
            ps.setInt(3, product.getPrice());
            ps.setString(4, product.getBrand_id());
            ps.setString(5, product.getProducttype_id());
            ps.setString(6, product.getImages());

            return ps.executeUpdate() > 0; //thực thi câu lệnh query Add new
        } catch (Exception ex) {

            JOptionPane.showMessageDialog(null, "Add New Error!!" + ex);
        }
        return false;
    }

    public boolean update(productlist product) {
        String query = "UPDATE productlist SET product_name=?,product_detail=?,price=?,brand_id=?,producttype_id=?,images=? WHERE product_id=?";
        try {
            PreparedStatement ps = uc.getConn().prepareStatement(query);
            ps.setString(1, product.getProduct_name());
            ps.setString(2, product.getProduct_detail());
            ps.setInt(3, product.getPrice());
            ps.setString(4, product.getBrand_id());
            ps.setString(5, product.getProducttype_id());
            ps.setString(6, product.getImages());
            ps.setInt(7, product.getProduct_id());

            return ps.executeUpdate() > 0; //thực thi câu lệnh query Update
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Update Error!!");
        }
        return false;
    }

    public boolean delete(productlist product) {
        String query = "DELETE FROM productlist WHERE product_id=?";
        try {
            PreparedStatement ps = uc.getConn().prepareStatement(query);
            ps.setInt(1, product.getProduct_id());
            return ps.executeUpdate() > 0; //thực thi câu lệnh query Delete
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Delete Error!!");
        }
        return false;
    }

    public ArrayList<productlist> findALL() {
        ArrayList<productlist> arr = new ArrayList<productlist>();
        String query = "SELECT * FROM productlist";
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs
                productlist pdl = new productlist();
                pdl.setProduct_id(rs.getInt("product_id"));
                pdl.setProduct_name(rs.getString("product_name"));
                pdl.setProduct_detail(rs.getString("product_detail"));
                pdl.setPrice(rs.getInt("price"));
                pdl.setBrand_id(rs.getString("brand_id"));
                pdl.setProducttype_id(rs.getString("producttype_id"));
                pdl.setImages(rs.getString("images"));
                arr.add(pdl);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error!!");
        }
        return arr;
    }

    public ArrayList<productlist> findByName(String name) {
        ArrayList<productlist> arr = new ArrayList<productlist>();
        String query = "SELECT * FROM productlist WHERE product_name like '%" + name + "%'";
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs
                productlist pdl = new productlist();
                pdl.setProduct_id(rs.getInt("product_id"));
                pdl.setProduct_name(rs.getString("product_name"));
                pdl.setProduct_detail(rs.getString("product_detail"));
                pdl.setPrice(rs.getInt("price"));
                pdl.setBrand_id(rs.getString("brand_id"));
                pdl.setProducttype_id(rs.getString("producttype_id"));
                pdl.setImages(rs.getString("images"));
                arr.add(pdl);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error!!");
        }
        return arr;
    }

    public productlist findByID(int id) {
        productlist pdl = new productlist();
        String query = "SELECT * FROM productlist WHERE product_id=" + id;
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs                
                pdl.setProduct_id(rs.getInt("product_id"));
                pdl.setProduct_name(rs.getString("product_name"));
                pdl.setProduct_detail(rs.getString("product_detail"));
                pdl.setPrice(rs.getInt("price"));
                pdl.setBrand_id(rs.getString("brand_id"));
                pdl.setProducttype_id(rs.getString("producttype_id"));
                pdl.setImages(rs.getString("images"));
                return pdl;
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error!!");
        }
        return null;
    }

    public ArrayList<productlist> findByTypeID(String typeid) {
        ArrayList<productlist> arr = new ArrayList<productlist>();
        String query = "SELECT * FROM productlist WHERE producttype_id='" + typeid + "'";
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs
                productlist pdl = new productlist();
                pdl.setProduct_id(rs.getInt("product_id"));
                pdl.setProduct_name(rs.getString("product_name"));
                pdl.setProduct_detail(rs.getString("product_detail"));
                pdl.setPrice(rs.getInt("price"));
                pdl.setBrand_id(rs.getString("brand_id"));
                pdl.setProducttype_id(rs.getString("producttype_id"));
                pdl.setImages(rs.getString("images"));
                arr.add(pdl);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error!!");
        }
        return arr;
    }
    
    public ArrayList<productlist> findByBrandID(String brandid) {
        ArrayList<productlist> arr = new ArrayList<productlist>();
        String query = "SELECT * FROM productlist WHERE brand_id='" + brandid + "'";
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs
                productlist pdl = new productlist();
                pdl.setProduct_id(rs.getInt("product_id"));
                pdl.setProduct_name(rs.getString("product_name"));
                pdl.setProduct_detail(rs.getString("product_detail"));
                pdl.setPrice(rs.getInt("price"));
                pdl.setBrand_id(rs.getString("brand_id"));
                pdl.setProducttype_id(rs.getString("producttype_id"));
                pdl.setImages(rs.getString("images"));
                arr.add(pdl);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error!!");
        }
        return arr;
    }

}
