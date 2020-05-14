<%-- 
    Document   : header
    Created on : Nov 19, 2019, 11:37:53 PM
    Author     : ADMN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
      <div class="top-links">
        <div class="inner">
          <!-- BEGIN BLOCK LANGUAGE -->
          <div class="language-box">
            <div class="language-switcher">
              <div class="language_detail" style="display: none;">
                <div class="language-inner">
                  <!--language-->
                </div>
                <!--language-inner-->
              </div>
              <!--language_detail-->

              <!--select_lang-->
            </div>
            <script type="text/javascript">
              jQuery(function() {
                jQuery(".language-switcher").hover(function() {
                    jQuery('.select_lang').addClass('active');
                    jQuery(".language_detail").stop(true, true).slideDown(200, "easeInSine");
                  },
                  function() {
                    jQuery('.select_lang').removeClass('active');
                    jQuery(".language_detail").stop(true, true).fadeOut(100, "easeInCubic");
                  });

              });
            </script>
          </div>
          <!-- BEGIN BLOCK CURRENCY -->
          <div class="currency-box">
            <div class="currency-switcher">

              <div class="currency_detail" style="display: none;">
                <div class="currency-inner">

                  <!--currency-->
                </div>
                <!--currency-inner-->
              </div>
              <!--currency_detail-->
              <!--select_curr-->
            </div>




            <script type="text/javascript">
              jQuery(function() {
                jQuery(".currency-switcher").hover(function() {
                    jQuery('.select_curr').addClass('active');
                    jQuery(".currency_detail").stop(true, true).slideDown(200, "easeInSine");
                  },
                  function() {
                    jQuery('.select_curr').removeClass('active');
                    jQuery(".currency_detail").stop(true, true).fadeOut(100, "easeInCubic");
                  });

              });
            </script>

          </div>
          <!--currency-box-->
          <p class="welcome-msg">Chào mừng quý khách, bạn có thể <a href="<%=request.getContextPath()%>/userController/initLogin.htm">đăng nhập</a> hoặc <a href="<%=request.getContextPath()%>/userController/initRegister.htm">tạo tài khoản</a>.</p>
          <!--top-left-->
          <div class="toplinks">
            <div class="links">
              <div class="login">
                <a href="<%=request.getContextPath()%>/userController/initLogin.htm"><span>Đăng nhập</span></a>
              </div>
              <div class="wishlist">
                <a href="<%=request.getContextPath()%>/userController/initRegister.htm"><span>Đăng kí</span></a>
              </div>
            </div>
            <!--links-->
          </div>
          <!--toplinks-->
        </div>
        <!--inner-->
      </div>
      <div class="header" id="header">
        <div class="phone"><i class="icon-phone"></i>
          <div class="phone-box"><strong>Trợ giúp?</strong> <span>+84 383 541 823</span></div>
        </div>
        <div class="logo"><a href="index_home.html" title="Tikin"><img src="/Thietkegiaodien/jsp/image/logo4.png" alt=""></a>
        </div>
        <div class="top-cart-contain">
          <div class="mini-cart">
            <div id="cart" class="mini-cart">
              <div class="heading basket dropdown-toggle">
                <a href="<%=request.getContextPath()%>/cartController/movetoCart.htm"><i class="icon-cart"></i>
                  <div class="cart-box"><span class="title">GIỎ HÀNG</span></div>
                </a></div>
            </div>
          </div>
          <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
            <input value="" type="hidden">
            <input id="enable_module" value="1" type="hidden">
            <input class="effect_to_cart" value="1" type="hidden">
            <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
          </div>
        </div>
      </div>
    </header>