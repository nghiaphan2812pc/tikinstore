<%-- 
    Document   : productDetail
    Created on : Dec 8, 2019, 12:38:58 AM
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
        <section class="main-container col1-layout">
            <div class="breadcrumbs">
              <div class="inner">
                <span></span><a href="index_home.html">Trang chủ</a>
                <span> &raquo; </span><a href="index_pro3.html">${pro.productName}</a>
              </div>
            </div>
            <div class="main-container-inner">
              <div id="content">
                <article class="col-main">
                  <div class="product-view" itemid="#product_base" itemtype="#" itemscope="">
                    <div class="product-essential">
                      <div class="product-img-box">
                        <ul class="cloud_zoom" id="etalage">

                          <li class="zoom_img">
                            <img src="/ThietkegiaodienAdmin/jsp/image/Rolex/${pro.productId}.jpg" title="${pro.productName}" alt="${pro.productName}" id="image" class="zoom_img_image" />
                            <img src="" title="${pro.productName}" alt="${pro.productName}" id="image" class="zoom_source_image" />
                          </li>
                          <div class="zoom-control"> <a href="javascript:void(0)" class="zoom-prev" style="right: 69.5px;">Previous</a> <a href="javascript:void(0)" class="zoom-next" style="right: 69.5px;">Next</a> </div>
                        </ul>
                      </div>

                      <div class="product-shop product-info">

                        <div class="product-name">
                          <h1>${pro.productName}</h1>
                        </div>


                        <p class="availability in-stock">Còn hàng</p>

                        <div class="price-box">
                          <p class="special-price"><span class="price">${pro.price}đ</span></p>


                        </div>




                        <div class="short-description">
                          <span>Brand:</span> <a href="<%=request.getContextPath()%>/productController/getAll${pro.brand}.htm">${pro.brand}</a>

                        </div>




                        <div class="add-to-box">
                          <div class="add-to-cart">


                            <label for="qty"></label>
                            <div class="pull-left">
                              <div class="custom pull-left">
                              </div>
                            </div>


                            <div class="pull-right">
                                <button type="button" title="Thêm vào giỏ hàng" class="button btn-cart" id="button-cart">
                                    <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productId=${pro.productId}">
                                        <span><i class="icon-basket">&nbsp;</i> Thêm vào giỏ hàng</span>
                                    </a>
                                </button>
                            </div>

                          </div>
                        </div>


                      </div>

                    </div>
                    
                    <div class="product-collateral">

                      <div class="addtional-info">
                        <div id="tabs" class="htabs tab-box">
                          <ul class="product-tabs">
                            <li class="tabLink first activeLink"><a href="#tab-description">Mô tả</a></li>
                          </ul>
                        </div><!-- tab-box -->

                        <div id="tab-description" class="tab-content product-tabs-content-inner clearfix">
                          <p class="intro">Rolex với tên gọi chính xác là Rolex SA là một hãng sản xuất đồng hồ Thụy Sỹ với phân khúc từ cao cấp đến xa xỉ và sang trọng. Rolex SA bao gồm hai thương hiệu là Rolex và Montres Tudor SA chuyên thiết kế, sản
                            xuất, phân phối đồng hồ đeo tay dưới thương hiệu Rolex và Tudor. Hãng sản xuất Rolex được thành lập bởi Hans Wilsdorf và Alfred Davis tại London nước Anh vào năm 1905, sau đó đến năm 1919, Rolex đã chuyển toàn bộ hoạt động, cũng
                            như cơ sở sản xuất đồng hồ sang Geneva Thụy Sỹ.</p>
                        </div>
                      </div><!-- addtional-info -->
                    </div> <!-- product-collateral -->
                  </div>
                </article>
              </div><!-- content -->
            </div><!-- main-container-inner -->
        </section>
        <script type="text/javascript">
            function mycarousel_initCallback(carousel) {
              carousel.buttonNext.bind('click', function() {
                carousel.startAuto(0);
              });

              carousel.buttonPrev.bind('click', function() {
                carousel.startAuto(0);
              });
              carousel.clip.hover(function() {
                carousel.stopAuto();
              }, function() {
                carousel.startAuto();
              });
            }

            $(document).ready(function() {
              $('#mycarousel2').jcarousel({
                scroll: 1,
                animation: 1200,
                auto: 0,
                wrap: 'circular',
                initCallback: mycarousel_initCallback

              });
            });
          </script>



          <script type="text/javascript">
            $(document).ready(function() {
              $('.colorbox').colorbox({
                overlayClose: true,
                opacity: 0.5,
                rel: "colorbox"
              });
            });
          </script>
          <script type="text/javascript">
            <!--
            $('select[name="profile_id"], input[name="quantity"]').change(function() {
              $.ajax({
                url: 'index.php?route=product/product/getRecurringDescription',
                type: 'post',
                data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
                dataType: 'json',
                beforeSend: function() {
                  $('#profile-description').html('');
                },
                success: function(json) {
                  $('.success, .warning, .attention, information, .error').remove();

                  if (json['success']) {
                    $('#profile-description').html(json['success']);
                  }
                }
              });
            });

            $('#button-cart').bind('click', function() {
              $.ajax({
                url: 'index.php?route=checkout/cart/add',
                type: 'post',
                data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
                dataType: 'json',
                success: function(json) {
                  $('.success, .warning, .attention, information, .error').remove();

                  if (json['error']) {
                    if (json['error']['option']) {
                      for (i in json['error']['option']) {
                        $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                      }
                    }

                    if (json['error']['profile']) {
                      $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                    }
                  }

                  if (json['success']) {
                    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                    $('.success').fadeIn('slow');

                    $('#cart-total').html(json['only_count']);

                    $('html, body').animate({
                      scrollTop: 0
                    }, 'slow');
                  }
                }
              });
            });
            //
            -->
          </script>
          <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/ajaxupload.js"></script>
          <script type="text/javascript">
            new AjaxUpload('#button-option-222', {
              action: 'index.php?route=product/product/upload',
              name: 'file',
              autoSubmit: true,
              responseType: 'json',
              onSubmit: function(file, extension) {
                $('#button-option-222').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
                $('#button-option-222').attr('disabled', true);
              },
              onComplete: function(file, json) {
                $('#button-option-222').attr('disabled', false);

                $('.error').remove();

                if (json['success']) {
                  alert(json['success']);

                  $('input[name=\'option[222]\']').attr('value', json['file']);
                }

                if (json['error']) {
                  $('#option-222').after('<span class="error">' + json['error'] + '</span>');
                }

                $('.loading').remove();
              }
            });
          </script>
          <script type="text/javascript">
            <!--
            $('#review .pagination a').live('click', function() {
              $('#review').fadeOut('slow');

              $('#review').load(this.href);

              $('#review').fadeIn('slow');

              return false;
            });

            $('#review').load('index35eb.html?route=product/product/review&amp;product_id=42');

            $('#button-review').bind('click', function() {
              $.ajax({
                url: 'index.php?route=product/product/write&product_id=42',
                type: 'post',
                dataType: 'json',
                data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $(
                  'input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
                beforeSend: function() {
                  $('.success, .warning').remove();
                  $('#button-review').attr('disabled', true);
                  $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> Please Wait!</div>');
                },
                complete: function() {
                  $('#button-review').attr('disabled', false);
                  $('.attention').remove();
                },
                success: function(data) {
                  if (data['error']) {
                    $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
                  }

                  if (data['success']) {
                    $('#review-title').after('<div class="success">' + data['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').attr('checked', '');
                    $('input[name=\'captcha\']').val('');
                  }
                }
              });
            });
            //
            -->
          </script>
          <script type="text/javascript">
            <!--
            $('#tabs a').tabs();
            //
            -->
          </script>
          <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/ui/jquery-ui-timepicker-addon.js"></script>
          <script type="text/javascript">
            <!--
            $(document).ready(function() {
              if ($.browser.msie && $.browser.version == 6) {
                $('.date, .datetime, .time').bgIframe();
              }

              $('.date').datepicker({
                dateFormat: 'yy-mm-dd'
              });
              $('.datetime').datetimepicker({
                dateFormat: 'yy-mm-dd',
                timeFormat: 'h:m'
              });
              $('.time').timepicker({
                timeFormat: 'h:m'
              });
            });
            //
            -->
          </script>
          <script type="text/javascript">
            jQuery(document).ready(function() {
              var width = jQuery('.product-view .product-img-box').width() * 0.99;
              var src_img_width = 60;
              var src_img_height = 85;
              var ratio_width = 450;
              var ratio_height = 546;

              src_img_width = 100 * ratio_width / ratio_height;
              var height = width * ratio_height / ratio_width;

              jQuery('#etalage').cloud_zoom({
                thumb_image_width: width,
                thumb_image_height: height,
                source_image_width: src_img_width,
                source_image_height: src_img_height,
                zoom_area_width: width,
                zoom_area_height: height,
                zoom_enable: false,
                smallthumb_hide_single: false,
                smallthumbs_position: 'bottom',
                show_icon: false,
                autoplay: false
              });
              jQuery(".product-img-box .cloud_zoom li.zoom_img").zoom();
              jQuery('.product-view .product-img-box .zoom-control a').css('right', ((jQuery('.zoom_small_thumbs img').first().width()) / 2 - 3) + "px");
              if (jQuery('.zoom_small_thumbs').width() == 0)
                jQuery('.product-view .product-img-box .zoom-control a').css('right', ((jQuery('.zoom_small_thumbs img').first().width()) / 2 - 3) + "px");
              jQuery(window).resize(function(e) {
                var width = jQuery('.product-view .product-img-box').width() * 0.99;
                var height = width * ratio_height / ratio_width;
                zoom_enabled = false;
                if (jQuery(window).width() < 500)
                  zoom_enabled = false;
                jQuery('#etalage').cloud_zoom({
                  thumb_image_width: width,
                  thumb_image_height: height,
                  source_image_width: src_img_width,
                  source_image_height: src_img_height,
                  zoom_area_width: width,
                  zoom_area_height: height,
                  zoom_enable: zoom_enabled,
                  smallthumb_hide_single: false,
                  smallthumbs_position: 'bottom',
                  show_icon: true,
                  autoplay: false
                });
                jQuery('.product-view .product-img-box .zoom-control a').css('right', ((jQuery('.zoom_small_thumbs').width()) / 2) + "px");
              });
              jQuery('.zoom-prev').on('click', function() {
                etalage_previous();
              });

              jQuery('.zoom-next').on('click', function() {
                etalage_next();
              });
            });
          </script>
        <jsp:include page="footer.jsp"></jsp:include>
      </div>
      <!-- container starts in header-->
      <a href="#" id="toTop" style="display: inline;"><span id="toTopHover" style="opacity: 0;"></span></a>
    </body>

</html>
