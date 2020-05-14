/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Product;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.ConnectionDB;

/**
 *
 * @author ADMN
 */
public class ProductModel {
    public List<Product> getAllProduct() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listPro = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call GetAllProduct()}");
            ResultSet rs = callSt.executeQuery();
            listPro = new ArrayList<>();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductId(rs.getInt("ProductId"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setPrice(rs.getInt("Price"));
                pro.setBrand(rs.getString("Brand"));
                pro.setDescription(rs.getString("Description"));
                pro.setImage(rs.getString("Image"));
                listPro.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listPro;

    }

    public Product getProductById(int productId) {
        Connection conn = null;
        CallableStatement callSt = null;
        Product pro = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call GetProductById(?)}");
            callSt.setInt(1, productId);
            ResultSet rs = callSt.executeQuery();
            pro = new Product();
            if (rs.next()) {
                pro.setProductId(rs.getInt("ProductId"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setPrice(rs.getInt("Price"));
                pro.setBrand(rs.getString("Brand"));
                pro.setDescription(rs.getString("Description"));
                pro.setImage(rs.getString("Image"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return pro;
    }
}
