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
    @RequestMapping(value = "/getAll")
    public ModelAndView getAllUser() {
        ModelAndView model = new ModelAndView("user");
        List<User> listUser = userModel.getAllUser();
        model.addObject("listUser", listUser);
        return model;
    }
    
    @RequestMapping(value = "/delete")
    public String deleteUser(int userId) {
        //Thuc hien xoa
        boolean check = userModel.deleteUser(userId);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "error";
        }
    }
}
