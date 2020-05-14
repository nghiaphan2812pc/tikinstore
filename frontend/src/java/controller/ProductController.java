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
import org.springframework.web.bind.annotation.RequestParam;
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
        ModelAndView model = new ModelAndView("home");
        List<Product> listPro = proModel.getAllProduct();
        model.addObject("listPro", listPro);
        return model;
    }
    @RequestMapping(value = "/getAllRolex")
    public ModelAndView getAllRolex() {
        ModelAndView model = new ModelAndView("rolex");
        List<Product> listPro = proModel.getAllProduct();
        model.addObject("listPro", listPro);
        return model;
    }
    @RequestMapping(value = "/getAllHublot")
    public ModelAndView getAllHublot() {
        ModelAndView model = new ModelAndView("hublot");
        List<Product> listPro = proModel.getAllProduct();
        model.addObject("listPro", listPro);
        return model;
    }
    @RequestMapping(value = "/productDetail")
    public ModelAndView productDetail(@RequestParam("productId") int productId) {
        ModelAndView model = new ModelAndView("productDetail");
        Product product = proModel.getProductById(productId);
        model.addObject("pro", product);
        return model;
    }
}
