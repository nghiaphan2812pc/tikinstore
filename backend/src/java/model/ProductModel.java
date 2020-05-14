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
import java.sql.Types;
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
    public boolean insertProduct(Product product){
        //Khoi tao doi tuong Connection va CallableStatement
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call InsertProduct(?,?,?,?,?,?)}");
            //set gia tri cac tham so vao
            callSt.setString(1, product.getProductName());
            callSt.setInt(2, product.getPrice());
            callSt.setString(3, product.getBrand());
            callSt.setString(4, product.getDescription());
            callSt.setString(5, product.getImage());
            //Dang ky kieu du lieu cho cac tham so tra ra
            callSt.registerOutParameter(6, Types.BIT);
            //Thuc hien procedure
            callSt.execute();
            //Lay gia tri tham so tra ra
            check = callSt.getBoolean(6);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnection(conn, callSt);
        }
        return check;
    }
    
    public boolean updateProduct(Product product){
        //Khoi tao doi tuong Connection va CallableStatement
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call UpdateProduct(?,?,?,?,?,?,?)}");
            //set gia tri cac tham so vao
            callSt.setInt(1, product.getProductId());
            callSt.setString(2, product.getProductName());
            callSt.setInt(3, product.getPrice());
            callSt.setString(4, product.getBrand());
            callSt.setString(5, product.getDescription());
            callSt.setString(6, product.getImage());
            //Dang ky kieu du lieu cho cac tham so tra ra
            callSt.registerOutParameter(7, Types.BIT);
            //Thuc hien procedure
            callSt.execute();
            //Lay gia tri tham so tra ra
            check = callSt.getBoolean(7);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnection(conn, callSt);
        }
        return check;
    }
    
    public boolean deleteProduct(int productId){
        //Khoi tao doi tuong Connection va CallableStatement
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call DeleteProduct(?)}");
            //set gia tri cac tham so vao
            callSt.setInt(1, productId);           
            //Dang ky kieu du lieu cho cac tham so tra ra          
            //Thuc hien procedure
            callSt.executeUpdate();
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnection(conn, callSt);
        }
        return check;
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
