<%-- 
    Document   : head
    Created on : Nov 19, 2019, 11:37:42 PM
    Author     : ADMN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
  <meta charset="UTF-8" />
  <title>Tikin Store</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <base />
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/css/stylesheet.css" />
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/css/styles.css" />
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/css/font-awesome.css" />
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/css/slider1.css" />
  
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/css/responsive.css" />
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/jquery/colorbox/colorbox.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/css/carousel.css" media="screen" />
  <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/Thietkegiaodien/jsp/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/common.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/mob-nav.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/banner.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/home-tabs.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/cloud-zoom.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/testimonial.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/products-slider.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/totop.js"></script>
  
  <script type="text/javascript" src="/Thietkegiaodien/jsp/js/fancybox/jquery.fancybox.js"></script>
  <link type="text/css" rel="stylesheet" href="/Thietkegiaodien/jsp/js/fancybox/jquery.fancybox.css">
  <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/tabs.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/colorbox/jquery.colorbox-min.js"></script>
  <script type="text/javascript" src="/Thietkegiaodien/jsp/jquery/jquery.jcarousel.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function($) {
      $(".button-grid").click(function(e) {
        $(".category-products ul.products-grid").fadeIn();
        $(".category-products ol.products-list").fadeOut();
        $(this).addClass('button-active');
        $('.button-list').removeClass('button-active');
        e.preventDefault();
      });
      $(".button-list").click(function(e) {
        $(".category-products ul.products-grid").fadeOut();
        $(".category-products ol.products-list").fadeIn();
        $(this).addClass('button-active');
        $('.button-grid').removeClass('button-active');
        e.preventDefault();
      })
    });
  </script>

  <script type="text/javascript">
    $(document).ready(function($) {
      $(".category-products ul.products-grid").fadeIn();
      $(".category-products ol.products-list").fadeOut();
      $('.button-grid').addClass('button-active');
      $('.button-list').removeClass('button-active');
    });
  </script>


  <style type="text/css">
    /*  update google Font */
    header .welcome-msg,
    .toplinks,
    .mini-cart .basket a,
    .top-cart-content .block-subtitle,
    .mini-cart .actions .btn-checkout,
    .mini-cart .actions .view-cart,
    .mini-cart .actions .view-cart:hover,
    .mini-cart .button.btn-checkout,
    #nav .nav-custom-link .header-nav-dropdown-wrapper p,
    #nav>li>a,
    #nav ul li a,
    #nav ul.level0>li>a,
    .grid12-4 h3,
    .grid12-4 p,
    a.btn-button-st,
    #nav .nav-custom-link .header-nav-dropdown-wrapper h4.heading,
    .totals h3,
    .crosssel h2,
    .cart-collaterals .col2-set h3,
    .page-title h1,
    .page-title h2,
    .products-grid .item .item-inner .item-info .info-inner .item-title a,
    .email-friend a,
    .button,
    .btn,
    .button-inverse,
    .button-vote,
    .sidebar .button,
    .sidebar .btn,
    .dropdown .dropdown-menu .button,
    .buttons-set .back-link a,
    .scrolltop,
    .button-tabs li a,
    .block .block-title,
    .side-nav-categories .block-title,
    .cat-img-title .cat-heading,
    .products-list .product-name a,
    .products-grid .actions button.button.btn-cart span,
    a.button.detail-bnt span,
    .product-view .new-label,
    .product-view .sale-label,
    .product-view .product-name h1,
    .product-view .short-description h2,
    .product-view .product-shop .add-to-links .link-wishlist,
    .product-view .product-shop .add-to-box .add-to-cart label,
    .product-view .product-shop .product-options-bottom .add-to-cart label,
    #customer-reviews .page-title h2,
    .tab-box .activeLink a,
    .tab-box a,
    .tab-box a:hover,
    .availability,
    .product-brand,
    .add-to-cart label,
    .add-to-links span,
    .one-page-checkout .step-title .number,
    .one-page-checkout .step-title h3,
    .one-page-checkout .active .step-title,
    .checkout-progress li,
    .page-title_multi h2,
    #wishlist-table .product-name,
    .login_page strong,
    #shopping-cart-table .product-name,
    #store-messages .message strong,
    footer h4,
    .our-features-box .feature-box,
    .new_title h2,
    .new-label,
    .sale-label,
    .related-block .block-title,
    .up-sell-slider .block-title,
    .popular-block .block-title,
    .orange-slider .text,
    .right-side-content h2,
    a.button.view-all,
    .blog-title h2,
    .latest-news ul li h2,
    .latest-news a,
    .newsletter-sign-box h3,
    .phone .phone-box strong,
    .pro-recommend .products-grid .actions button.button.btn-cart span,
    .pro-recommend .new_title h2,
    .pro-recommend a.button.detail-bnt span,
    .newsletter-wrap input[type="text"],
    .newsletter-wrap button.subscribe,
    .fur-des p,
    .jcarousel-skin-tango5 ul.products-grid li.item a.thumb span.quick-view span,
    .category-products ul.products-grid li.item a.thumb span.quick-view span,
    .jcarousel-skin-tango4 ul.products-grid li.item a.thumb span.quick-view span,
    .magik-producttabs .magik-pdt-container .magik-pdt-nav .pdt-nav>li,
    .magik-producttabs ul.pdt-list li.item a.thumb span.quick-view span,
    .testimonials_RC .quote-box q,
    .what-cs>h2,
    .what-cs>h2 span,
    .what-cs .item .inner .jda,
    #mc_embed_signup label,
    .tp-caption.ExtraLargeTitle,
    .tp-caption.LargeTitle,
    .tp-caption.Title,
    .tp-caption.TitleOrange,
    #menu ul.navmenu .menutop h2,
    ul.topnav li a,
    ul.topnav ul li a,
    .os-phrases h2,
    .checkout-heading {
      font-family: 'Open Sans', sans-serif;
    }

    /* sale label */
    .new-label {
      background: #D12631
    }
  </style>


</head>
