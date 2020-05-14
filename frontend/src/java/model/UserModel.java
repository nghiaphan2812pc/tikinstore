/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.User;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConnectionDB;

/**
 *
 * @author ADMN
 */
public class UserModel {
    public boolean checkUser(User user){
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try{
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call CheckUser(?,?,?)}");
            callSt.setString(1,user.getPhone());
            callSt.setString(2, user.getPass());
            callSt.registerOutParameter(3, Types.BIT);
            callSt.execute();
            int cnt = callSt.getInt(3);
            if(cnt>0){
                check = true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnection(conn, callSt);
        }
        return check;
    }
    public boolean insertAccount(User user){
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;       
        try {
             conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{ call InsertUser(?,?,?,?,?,?)}");
            callSt.setString(1, user.getUserName());
            callSt.setString(2, user.getPass());
            callSt.setString(3, user.getMail());
            callSt.setString(4, user.getPhone());
            callSt.setString(5, user.getAddress());
            callSt.registerOutParameter(6, Types.BIT);
            callSt.execute();
            check = callSt.getBoolean(6);
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally{
            ConnectionDB.closeConnection(conn, callSt);
        }
        return check;
    }
}
