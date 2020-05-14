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

    <div class="our-features-box">
      <ul>
        <li>
          <div class="feature-box">
            <div class="icon-truck">&nbsp;</div>

            <div class="content">GIAO HÀNG TOÀN QUỐC</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-support">&nbsp;</div>

            <div class="content">HỖ TRỢ KHÁCH HÀNG 24/24</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-money">&nbsp;</div>

            <div class="content">THANH TOÁN NHẬN HÀNG</div>
          </div>
        </li>
        <li class="last">
          <div class="feature-box">
            <div class="icon-return">&nbsp;</div>

            <div class="content">7 NGÀY ĐỔI TRẢ</div>
          </div>
        </li>
      </ul>
    </div>
    <div class="magik-slideshow" id="magik-slideshow">
      <div class="rev_slider_wrapper fullwidthbanner-container" id="rev_slider_4_wrapper">
        <div class="rev_slider fullwidthabanner" id="rev_slider_4">
          <ul>
            <li data-masterspeed="1000" data-slotamount="7" data-thumb="/Thietkegiaodien/jsp/image/banner/banner3.jpg" data-transition="random"><img alt="slide1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"
                src="/Thietkegiaodien/jsp/image/banner/banner3.jpg" />
              <div class="tp-caption ExtraLargeTitle sft  tp-resizeme " data-easing="Linear.easeNone" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1100"
                data-x="45" data-y="30" style="z-index:2;max-width:auto;max-height:auto;white-space:nowrap;">Shop đồng hồ nam uy tín</div>

              <div class="tp-caption LargeTitle sfl  tp-resizeme " data-easing="Linear.easeNone" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1300"
                data-x="45" data-y="70" style="z-index:3;max-width:auto;max-height:auto;white-space:nowrap;">TIKIN STORE</div>

              <div class="tp-caption sfb  tp-resizeme " data-easing="Linear.easeNone" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1500" data-x="45"
                data-y="360" style="z-index:4;max-width:auto;max-height:auto;white-space:nowrap;"><a class="view-more" href="#">Xem thêm</a> <a class="buy-btn" href="#">Mua ngay</a></div>

              <div class="tp-caption Title sft  tp-resizeme " data-easing="Power2.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1500"
                data-x="45" data-y="150" style="z-index:4;max-width:auto;max-height:auto;white-space:nowrap;">Luôn luôn phục vụ nhiệt tình<br />
                theo mọi nhu cầu khách hàng</div>
              
            </li>
            <li data-masterspeed="1000" data-slotamount="7" data-thumb="/Thietkegiaodien/jsp/image/banner/banner3.jpg" data-transition="random"><img alt="slide2" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"
                src="/ThietkegiaodienAdmin/jsp/image/banner/bannerD.png" />
              <div class="tp-caption ExtraLargeTitle sft  tp-resizeme " data-easing="Linear.easeNone" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1100"
                data-x="45" data-y="30" style="z-index:2;max-width:auto;max-height:auto;white-space:nowrap;">TIKIN STORE</div>

              <div class="tp-caption LargeTitle sfl  tp-resizeme " data-easing="Linear.easeNone" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1300"
                data-x="45" data-y="70" style="z-index:3;max-width:auto;max-height:auto;white-space:nowrap;">LUXURY</div>

              <div class="tp-caption sfb  tp-resizeme " data-easing="Linear.easeNone" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1500" data-x="45"
                data-y="360" style="z-index:4;max-width:auto;max-height:auto;white-space:nowrap;"><a class="view-more" href="#">Xem thêm</a> <a class="buy-btn" href="#">Mua ngay</a></div>

              <div class="tp-caption Title sft  tp-resizeme " data-easing="Power2.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="500" data-speed="500" data-splitin="none" data-splitout="none" data-start="1500"
                data-x="45" data-y="150" style="z-index:4;max-width:auto;max-height:auto;white-space:nowrap;">Luôn luôn phục vụ nhiệt tình<br />
                theo mọi nhu cầu khách hàng</div>
            </li>
          </ul>

          <div class="tp-bannertimer">&nbsp;</div>
        </div>
      </div>
      <script type='text/javascript'>
        jQuery(document).ready(function() {
          jQuery('#rev_slider_4').show().revolution({
            dottedOverlay: 'none',
            delay: 5000,
            startwidth: 770,
            startheight: 460,

            hideThumbs: 200,
            thumbWidth: 200,
            thumbHeight: 50,
            thumbAmount: 2,

            navigationType: 'thumb',
            navigationArrows: 'solo',
            navigationStyle: 'round',

            touchenabled: 'on',
            onHoverStop: 'on',

            swipe_velocity: 0.7,
            swipe_min_touches: 1,
            swipe_max_touches: 1,
            drag_block_vertical: false,

            spinner: 'spinner0',
            keyboardNavigation: 'off',

            navigationHAlign: 'center',
            navigationVAlign: 'bottom',
            navigationHOffset: 0,
            navigationVOffset: 20,

            soloArrowLeftHalign: 'left',
            soloArrowLeftValign: 'center',
            soloArrowLeftHOffset: 20,
            soloArrowLeftVOffset: 0,

            soloArrowRightHalign: 'right',
            soloArrowRightValign: 'center',
            soloArrowRightHOffset: 20,
            soloArrowRightVOffset: 0,

            shadow: 0,
            fullWidth: 'on',
            fullScreen: 'off',

            stopLoop: 'off',
            stopAfterLoops: -1,
            stopAtSlide: -1,

            shuffle: 'off',

            autoHeight: 'off',
            forceFullWidth: 'on',
            fullScreenAlignForce: 'off',
            minFullScreenHeight: 0,
            hideNavDelayOnMobile: 1500,

            hideThumbsOnMobile: 'off',
            hideBulletsOnMobile: 'off',
            hideArrowsOnMobile: 'off',
            hideThumbsUnderResolution: 0,

            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            startWithSlide: 0,
            fullScreenOffsetContainer: ''
          });
        });
      </script>

      <div class="RHS-banner">
        <div class="add"><a href="#"><img alt="banner" src="/ThietkegiaodienAdmin/jsp/image/banner/bannerE.png" /></a></div>
      </div>
    </div>
    <div class="our-features-box mob">
      <ul>
        <li>
          <div class="feature-box">
            <div class="icon-truck">&nbsp;</div>

            <div class="content">FREE SHIPPING on order over $99</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-support">&nbsp;</div>

            <div class="content">Customer Support Service</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-money">&nbsp;</div>

            <div class="content">Money Back Guarantee</div>
          </div>
        </li>
        <li class="last">
          <div class="feature-box">
            <div class="icon-return">&nbsp;</div>

            <div class="content">30 days return Service</div>
          </div>
        </li>
      </ul>
    </div>
    <div class="offer-banner-section">
    </div>

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
    <div class="best-sales-pro featured-pro">
      <div>
        <div class="new_title center">
          <h2>HUBLOT</h2>
        </div><!-- new_title center -->
        <a id="product_slider_prev_1" class="jcarousel-prev-horizontal2" href="#"></a>
        <a id="product_slider_next_1" class="jcarousel-next-horizontal2" href="#"></a>

        <div class="jcarousel-skin-tango4">
          <div style="position: relative; display: block;" class="jcarousel-container jcarousel-container-horizontal">
            <div style="overflow: hidden; position: relative;" class="jcarousel-clip jcarousel-clip-horizontal">
              <ul style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px; left: 0px; width: 1891px;" id="product_slider_1" class="products-grid jcarousel-list jcarousel-list-horizontal">
                <c:forEach items="${listPro}" var="pro">
                    <c:choose>
                        <c:when test="${pro.brand=='Hublot'}">
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

