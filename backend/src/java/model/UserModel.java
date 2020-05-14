/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.User;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConnectionDB;

/**
 *
 * @author ADMN
 */
public class UserModel {
    public List<User> getAllUser() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<User> listPro = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call GetAllUser()}");
            ResultSet rs = callSt.executeQuery();
            listPro = new ArrayList<>();
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPass(rs.getString("Pass"));
                user.setMail(rs.getString("Mail"));
                user.setPhone(rs.getString("Phone"));
                user.setAddress(rs.getString("Address"));
                listPro.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listPro;

    }
    public boolean deleteUser(int userId){
        //Khoi tao doi tuong Connection va CallableStatement
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call DeleteUser(?)}");
            //set gia tri cac tham so vao
            callSt.setInt(1, userId);           
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
}
