/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Cart;
import entity.Product;
import model.ProductModel;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Lab06
 */
@Controller
@RequestMapping(value = "/cartController")
public class CartController {

    private ProductModel proModel;

    public CartController() {
        proModel = new ProductModel();
    }

    @RequestMapping(value = "/addCart")
    public String addCart(HttpSession session, int productId) {
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        Product proAdd = proModel.getProductById(productId);
        if (listCart == null) {
            listCart = new ArrayList<>();
            Cart cart = new Cart(proAdd, 1);
            listCart.add(cart);
        } else {
            boolean check = false;
            for (Cart cart : listCart) {
                if (cart.getProduct().getProductId()== productId) {
                    check = true;
                    cart.setQuantity(cart.getQuantity() + 1);
                    break;
                }
            }
            if (!check) {
                Cart cart = new Cart(proAdd, 1);
                listCart.add(cart);
            }
        }
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", calToTalAmount(listCart));
        return "ShoppingCart";

    }

    public float calToTalAmount(List<Cart> listCart) {
        float totalAmount = 0;
        for (Cart cart : listCart) {
            totalAmount += cart.getProduct().getPrice() * cart.getQuantity();
        }
        return totalAmount;
    }

    @RequestMapping(value = "/updateCart")
    public String updateCart(HttpSession session, HttpServletRequest request) {
        //Lay mang du lieu quantity tu request
        String[] arrQuantity = request.getParameterValues("quantity");
        //Lay listCart tu session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //Cap nhat tat ca quantity cua listCart theo arrQuantity
        for (int i = 0; i < listCart.size(); i++) {
            //Cap nhat
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
        }
        //add listCart vao session
        session.setAttribute("listCart", listCart);
        //Tinh lai tong tien va add vao session
        session.setAttribute("totalAmount", calToTalAmount(listCart));
        //Chuyen sang trang Shopping Cart
        return "ShoppingCart";
    }
    
    @RequestMapping(value = "/movetoCart")
    public String movetoCart(){
        return "ShoppingCart";
    }
    
    @RequestMapping(value = "/removeCart")
    public String removeCart(HttpSession session, int productId) {
        //Lay listCart tu session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //Duyet listCart va xoa hoa don chi tiet chua productID can xoa
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getProduct().getProductId() == productId) {
                //Xoa cart
                listCart.remove(i);
            }
        }
        //add listCart vao session
        session.setAttribute("listCart", listCart);
        //Tinh lai tong tien va add vao session
        session.setAttribute("totalAmount", calToTalAmount(listCart));
        //Chuyen sang trang Shopping Cart
        return "ShoppingCart";
    }
}
