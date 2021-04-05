/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.g4furnitureshop.dao;

import com.g4furnitureshop.model.bill;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class billDAO {
    private UtilityConnection uc;

    public billDAO() {
        uc=new UtilityConnection();
        uc.connect();
    }
    
    public boolean addNew(bill bill) {      
        String query ="INSERT INTO bill(bill_date,manager_id,customer_id) VALUES(?,?,?)";
        try {
            PreparedStatement ps= uc.getConn().prepareStatement(query);
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            ps.setString    (1, sdf.format(bill.getBill_date()));
            ps.setInt       (2, bill.getManager_id());
            ps.setInt       (3, bill.getCustomer_id());
            return ps.executeUpdate()>0; //thực thi câu lệnh query Add new
        } catch (SQLException ex) {
//            Logger.getLogger(employee_listDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Add New Error!!");
        }
        return false;
    }
    public boolean update(bill bill) {
        String query ="UPDATE bill SET bill_date=?,manager_id=?,customer_id=? WHERE bill_id=?";
        try {
            PreparedStatement ps= uc.getConn().prepareStatement(query);  
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            ps.setString    (1, sdf.format(bill.getBill_date()));
            ps.setInt       (2, bill.getManager_id());
            ps.setInt       (3, bill.getCustomer_id());
            ps.setInt       (4, bill.getBill_id());
            return ps.executeUpdate()>0; //thực thi câu lệnh query Update
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Update Error!!");
        }
        return false;
    }
    public boolean delete(bill bill) {
        String query ="DELETE FROM bill WHERE bill_id=?";
        try {
            PreparedStatement ps= uc.getConn().prepareStatement(query);  
            ps.setInt       (1, bill.getBill_id());
            return ps.executeUpdate()>0; //thực thi câu lệnh query Delete
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Delete Error!!");
        }
        return false;
    }
    public ArrayList<bill> findALL() {
        ArrayList<bill> arr=new ArrayList<bill>();
        String query ="SELECT * FROM bill";
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs
                bill tk = new bill();
                tk.setBill_id(rs.getInt("bill_id"));               
                tk.setBill_date(rs.getDate("bill_date"));
                tk.setManager_id(rs.getInt("manager_id"));
                tk.setCustomer_id(rs.getInt("customer_id"));
                arr.add(tk);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Search Error!!");
        }
        return arr;
    }
    public ArrayList<bill> findByManagerId(int id) {
        ArrayList<bill> arr=new ArrayList<bill>();
        String query ="SELECT * FROM bill WHERE manager_id="+id;
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs
                bill tk = new bill();
                tk.setBill_id(rs.getInt("bill_id"));               
                tk.setBill_date(rs.getDate("bill_date"));
                tk.setManager_id(rs.getInt("manager_id"));
                tk.setCustomer_id(rs.getInt("customer_id"));
                arr.add(tk);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error!!");
        }
        return arr;
    }
    public bill findByBillID(int id) {
        bill tk = new bill();
        String query ="SELECT * FROM bill WHERE bill_id="+id;
        try {
            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) { // có kết quả rs                
                tk.setBill_id(rs.getInt("bill_id"));               
                tk.setBill_date(rs.getDate("bill_date"));
                tk.setManager_id(rs.getInt("manager_id"));
                tk.setCustomer_id(rs.getInt("customer_id"));
                return tk;
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Search Error!!");
        }
        return null;
    }
//    public ArrayList<bill> fillcombo() {
//        ArrayList<bill> arr=new ArrayList<bill>();
//        String query ="SELECT bill_id FROM bill where bill_status != 3";
//        try {
//            Statement stm = uc.getConn().createStatement(); //thực thi câu lệnh query 
//            ResultSet rs = stm.executeQuery(query);
//            while (rs.next()) { // có kết quả rs
//                bill tk = new bill();
//                tk.setBill_id(rs.getInt("bill_id"));
//                arr.add(tk);
//            }
//        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Error!!");
//        }
//        return arr;
//    }
}
