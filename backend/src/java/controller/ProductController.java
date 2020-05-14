/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Product;
import java.util.List;
import model.ProductModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ADMN
 */
@Controller
@RequestMapping(value = "/productController")
public class ProductController {
    
    private ProductModel proModel;

    public ProductController() {
        proModel = new ProductModel();
    }

    @RequestMapping(value = "/getAll")
    public ModelAndView getAllProduct() {
        ModelAndView model = new ModelAndView("product");
        List<Product> listPro = proModel.getAllProduct();
        model.addObject("listPro", listPro);
        return model;
    }
    @RequestMapping(value = "/getHome")
    public ModelAndView getHome() {
        ModelAndView model = new ModelAndView("home");
        return model;
    }
    @RequestMapping(value = "/initInsert")
    public ModelAndView initInsetProduct() {
        //Khai bao trang jsp se tra ve sau khi thuc hien initInsert.htm
        ModelAndView model = new ModelAndView("createproduct");
        //Khoi tao doi tuong Product chua du lieu ma nguoi dung muon them moi
        Product newProduct = new Product();
        //Add newProduct vao model
        model.addObject("newProduct", newProduct);
        return model;
    }

    @RequestMapping(value = "/insert")
    public String insertProduct(Product newProduct) {
        //Thuc hien insert newProduct vao database
        boolean check = proModel.insertProduct(newProduct);
        if (check) {
            //goi lai getAll.htm de lay du lieu tu db ra hien thi
            return "redirect:getAll.htm";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdateProduct(int productId) {
        ModelAndView model = new ModelAndView("updateproduct");
        //Lay doi tuong Product trong database ra de hien thi
        Product productUpdate = proModel.getProductById(productId);
        //add productUpdate vao model
        model.addObject("productUpdate", productUpdate);
        return model;
    }

    @RequestMapping(value = "/update")
    public String updateProduct(Product productUpdate) {
        //Thuc hien update
        boolean check = proModel.updateProduct(productUpdate);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/delete")
    public String deleteProduct(int productId) {
        //Thuc hien xoa
        boolean check = proModel.deleteProduct(productId);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "error";
        }
    }
}
