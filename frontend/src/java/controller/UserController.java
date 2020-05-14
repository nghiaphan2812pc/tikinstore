/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ADMN
 */
@Controller
@RequestMapping(value = "/userController")
public class UserController {
    private UserModel userModel;

    public UserController(){
        this.userModel= new UserModel();
    }
    
    
    @RequestMapping(value = "/initLogin")
    public ModelAndView initLogin(){
        ModelAndView model = new ModelAndView("login");
        User user = new User();
        model.addObject("userLogin", user);
        return model;
    }
    
    @RequestMapping(value = "/login")
    public String checkUser(HttpSession session,User userLogin){
        boolean check = userModel.checkUser(userLogin);
        if(check){
            session.setAttribute("phone",userLogin.getPhone());
            session.setAttribute("pass", userLogin.getPass());
            return "success";
        }else{
            return "error";
        }
    }
    
    @RequestMapping(value = "/initRegister")
    public ModelAndView initRegister() {
        ModelAndView model = new ModelAndView("register");
        User user = new User();
        model.addObject("userRegister", user);
        return model;
    }
    @RequestMapping(value = "/register")
    public String register(HttpSession session, User userRegister) {
                boolean check = userModel.insertAccount(userRegister);
                if (check) {
                    session.setAttribute("userName", userRegister.getUserName());
                    session.setAttribute("pass", userRegister.getPass());
                    session.setAttribute("mail", userRegister.getMail());
                    session.setAttribute("phone",userRegister.getPhone());
                    session.setAttribute("address", userRegister.getAddress());
                    return "successRegister";
                } else {
                    return "errorRegister";
                }                
        
    }
}
