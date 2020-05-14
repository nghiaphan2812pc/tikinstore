<%-- 
    Document   : home
    Created on : Nov 17, 2019, 11:23:21 PM
    Author     : ADMN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<jsp:include page="head.jsp"></jsp:include>

<body class="cms-index-index cms-home-page">
  <div id="container">
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="menu.jsp"></jsp:include>

    <script type="text/javascript">
      $(window).scroll(function() {
        if ($(this).scrollTop() > 1) {
          $('nav').addClass("sticky");
        } else {
          $('nav').removeClass("sticky");
        }
      });
    </script>



    <div id="notification"></div>
    <style type="text/css">
      .miniimg_left {
        margin-right: 8px;
        vertical-align: text-top;
        margin-bottom: 12px;
      }

      #nav ul.level1>li a:before {
        color: #555;
        content: none !important;
        font-family: FontAwesome;
        font-size: 13px;
        padding-right: 6px;
      }
    </style>

    

    <div class="best-sales-pro">
      <div>
        <div class="new_title center">
          <h2>ROLEX</h2>
        </div><!-- new_title center -->
        <a id="product_slider_prev_1" class="jcarousel-prev-horizontal2" href="#"></a>
        <a id="product_slider_next_1" class="jcarousel-next-horizontal2" href="#"></a>
        <div class="jcarousel-skin-tango4">
          <div style="position: relative; display: block;" class="jcarousel-container jcarousel-container-horizontal">
            <div style="overflow: hidden; position: relative;" class="jcarousel-clip jcarousel-clip-horizontal">
              <ul style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px; left: 0px; width: 1891px;" id="product_slider_1" class="products-grid jcarousel-list jcarousel-list-horizontal">
              <c:forEach items="${listPro}" var="pro">
                  <c:choose>
                      <c:when test="${pro.brand=='Rolex'}">
                          <li class="item jcarousel-item jcarousel-item-horizontal jcarousel-item-1 jcarousel-item-1-horizontal" style="float: left; list-style: none outside none;">
                            <div class="item-inner">
                              <div class="product-wrapper">
                                <div class="thumb-wrapper">
                                  <a data-fancybox-type="ajax" onclick="" title="Xem thêm" class="detail-bnt thumb flip">
                                    <span class="face"><img src="${pro.image}" alt=""></span>
                                    <span class="face back">
                                      <img src="${pro.image}" alt="">
                                    </span>
                                    <span class="face back">
                                      <img src="${pro.image}" alt="">
                                    </span>
                                  </a>
                                </div>
                                <div class="actions">
                                  <span class="add-to-links">
                                    <a title="Thêm vào Yêu thích" class="link-wishlist" onclick="">
                                      <span>Thêm vào Yêu thích</span>
                                    </a>
                                  </span>
                                </div>
                              </div>
                              <div class="item-info">
                                <div class="info-inner">
                                  <div class="item-title"> <a href="<%=request.getContextPath()%>/productController/productDetail.htm?productId=${pro.productId}" title="">${pro.productName}</a> </div>
                                  <div class="item-content">
                                    <div class="item-price">
                                      <div class="price-box"> <span class="regular-price"> <span class="price">${pro.price}đ</span> </span> </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="actions">
                                  <button class="button btn-cart" title="Thêm vào giỏ hàng" type="button" onclick=""><a href="<%=request.getContextPath()%>/cartController/addCart.htm?productId=${pro.productId}"><span>Thêm vào giỏ hàng</span></a></button>
                                </div>
                              </div>
                             </div>
                           </li>
                      </c:when>
                  </c:choose>
              </c:forEach>
              </ul>
            </div>
                
          </div>
        </div>
      </div>
    </div>

    <script type="text/javascript">
      jQuery(document).ready(function($) {

        function mycarousel_initCallback(carousel) {

          jQuery('#product_slider_next_2').bind('click', function() {
            carousel.next();
            return false;
          });
          jQuery('#product_slider_prev_2').bind('click', function() {
            carousel.prev();
            return false;
          });
        };

        jQuery('#product_slider_2').jcarousel({
          scroll: 1,
          initCallback: mycarousel_initCallback,
          buttonNextHTML: null,
          buttonPrevHTML: null
        });
      });
    </script>
    
    <script type="text/javascript">
      jQuery(document).ready(function($) {

        function mycarousel_initCallback(carousel) {

          jQuery('#product_slider_next_1').bind('click', function() {
            carousel.next();
            return false;
          });
          jQuery('#product_slider_prev_1').bind('click', function() {
            carousel.prev();
            return false;
          });
        };

        jQuery('#product_slider_1').jcarousel({
          scroll: 1,
          initCallback: mycarousel_initCallback,
          buttonNextHTML: null,
          buttonPrevHTML: null
        });
      });
    </script>
    <script type="text/javascript">
      jQuery(document).ready(function($) {

        function mycarousel_initCallback(carousel) {

          jQuery('#product_slider_next').bind('click', function() {
            carousel.next();
            return false;
          });
          jQuery('#product_slider_prev').bind('click', function() {
            carousel.prev();
            return false;
          });
        };

        jQuery('#product_slider').jcarousel({
          scroll: 1,
          initCallback: mycarousel_initCallback,
          buttonNextHTML: null,
          buttonPrevHTML: null
        });
      });
    </script>



    <jsp:include page="footer.jsp"></jsp:include>
  </div>
  <!-- container starts in header-->

  <a href="#" id="toTop" style="display: inline;"><span id="toTopHover" style="opacity: 0;"></span></a>

</body>

</html>
