/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.g4furnitureshop.model;

/**
 *
 * @author Admin
 */
public class producttype {
    private String producttype_id;
    private String producttype_name;

    public producttype() {
    }

    public producttype(String producttype_id, String producttype_name) {
        this.producttype_id = producttype_id;
        this.producttype_name = producttype_name;
    }

    public String getProducttype_id() {
        return producttype_id;
    }

    public String getProducttype_name() {
        return producttype_name;
    }

    public void setProducttype_id(String producttype_id) {
        this.producttype_id = producttype_id;
    }

    public void setProducttype_name(String producttype_name) {
        this.producttype_name = producttype_name;
    }
    
}
