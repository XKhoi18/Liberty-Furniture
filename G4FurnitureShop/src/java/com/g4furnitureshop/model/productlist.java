/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.g4furnitureshop.model;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Admin
 */
public class productlist {
    private int product_id;
    private String product_name;
    private String product_detail;
    private int price;
    private String brand_id;
    private String producttype_id;
    private String images;
    
    // join data
    private Set<producttype> pdt = new HashSet<producttype>();
    private Set<brand> pdb = new HashSet<brand>();

    public productlist() {
    }

    public productlist(int product_id, String product_name, String product_detail, int price, String brand_id, String producttype_id, String images) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_detail = product_detail;
        this.price = price;
        this.brand_id = brand_id;
        this.producttype_id = producttype_id;
        this.images = images;
    }

    public int getProduct_id() {
        return product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public String getProduct_detail() {
        return product_detail;
    }

    public int getPrice() {
        return price;
    }

    public String getBrand_id() {
        return brand_id;
    }

    public String getProducttype_id() {
        return producttype_id;
    }

    public String getImages() {
        return images;
    }

    public Set<producttype> getPdt() {
        return pdt;
    }

    public Set<brand> getPdb() {
        return pdb;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public void setProduct_detail(String product_detail) {
        this.product_detail = product_detail;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
    }

    public void setProducttype_id(String producttype_id) {
        this.producttype_id = producttype_id;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public void setPdt(Set<producttype> pdt) {
        this.pdt = pdt;
    }

    public void setPdb(Set<brand> pdb) {
        this.pdb = pdb;
    }

}
