<%-- 
    Document   : menu
    Created on : Nov 19, 2019, 11:41:26 PM
    Author     : ADMN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="">
      <div class="nav-inner">
        <div id="menu" class="hidden-desktop">
          <ul class="navmenu">
            <li>
              <div class="menutop">
                <div class="toggle"> <span class="icon-bar">&nbsp;</span> <span class="icon-bar">&nbsp;</span> <span class="icon-bar">&nbsp;</span></div>
                <h2>Menu</h2>
              </div>
        </div>

        <script type="text/javascript">
          jQuery(document).ready(function() {
            jQuery('.toggle').click(function() {
              if (jQuery('.submenu').is(":hidden")) {
                jQuery('.submenu').slideDown("fast");
              } else {
                jQuery('.submenu').slideUp("fast");
              }
              return false;
            });
          });

          /*Phone Menu*/
          jQuery(document).ready(function() {
            jQuery(".topnav").accordion({
              accordion: false,
              speed: 300,
              closedSign: '+',
              openedSign: '-'
            });
          });
        </script>



        <ul id="nav">
          <li class="active level0 level-top parent drop-menu" id="tab_home"><a class="level-top" href="<%=request.getContextPath()%>/productController/getAll.htm"><span>Trang chủ</span></a>
          </li>
          <li class="level0 level-top parent ">
            <a href="<%=request.getContextPath()%>/productController/getAllRolex.htm">
              <span>Rolex</span> </a>
            <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
              <div class="level0-wrapper2">
                <div class="nav-block nav-block-center">
                  <ul class="level0">
                    <li class="level1 nav-6 parent item"><a href="<%=request.getContextPath()%>/productController/getAllRolex.htm"><span>ALL ROLEX</span></a>
                      <ul class="level1">
                        <c:forEach items="${listPro}" var="pro">
                            <c:choose>
                                <c:when test="${pro.brand=='Rolex'}">
                                    <li class="level2 nav-6-1"><a href="<%=request.getContextPath()%>/productController/productDetail.htm?productId=${pro.productId}"><span>${pro.productName}</span></a></li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
          </li>
          <li class="level0 level-top parent ">
            <a href="<%=request.getContextPath()%>/productController/getAllHublot.htm">
              <span>HUBLOT</span> </a>
            <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
              <div class="level0-wrapper2">
                <div class="nav-block nav-block-center">
                  <ul class="level0">
                    <li class="level1 nav-6 parent item"><a href="<%=request.getContextPath()%>/productController/getAllHublot.htm"><span>ALL HUBLOT</span></a>
                      <ul class="level1">
                        <c:forEach items="${listPro}" var="pro">
                            <c:choose>
                                <c:when test="${pro.brand=='Hublot'}">
                                    <li class="level2 nav-6-1"><a href="<%=request.getContextPath()%>/productController/productDetail.htm?productId=${pro.productId}"><span>${pro.productName}</span></a></li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
        </ul>


        <!-- serch box -->
        <div class="search-box">
          <!-- <div class="button-search"></div> -->
          <input type="text" name="search" placeholder="Tìm kiếm" value="" class="searchbox" id="search" />
          <button type="submit" title="search" id="submit-button" class="button-common search-btn-bg"><span class="searchIconNew">&nbsp;</span></button>
        </div>

      </div>


      <script type="text/javascript">
        //<![CDATA[

        jQuery(function($) {
          $("#nav > li").hover(function() {
            var el = $(this).find(".level0-wrapper");
            el.hide();
            el.css("left", "0");
            el.stop(true, true).delay(150).fadeIn(300, "easeOutCubic");
          }, function() {
            $(this).find(".level0-wrapper").stop(true, true).delay(300).fadeOut(300, "easeInCubic");
          });
        });

        var isTouchDevice = ('ontouchstart' in window) || (navigator.msMaxTouchPoints > 0);
        jQuery(window).on("load", function() {

          if (isTouchDevice) {
            jQuery('#nav a.level-top').click(function(e) {
              $t = jQuery(this);
              $parent = $t.parent();
              if ($parent.hasClass('parent')) {
                if (!$t.hasClass('menu-ready')) {
                  jQuery('#nav a.level-top').removeClass('menu-ready');
                  $t.addClass('menu-ready');
                  return false;
                } else {
                  $t.removeClass('menu-ready');
                }
              }
            });
          }

        }); //end: on load

        //]]>
      </script>
      <script type="text/javascript">
        //<![CDATA[
        jQuery(document).ready(function() {
          var scrolled = false;
          jQuery("#nav li.level0.drop-menu").mouseover(function() {
            if (jQuery(window).width() >= 740) {
              jQuery(this).children('ul.level1').fadeIn(100);
            }
            return false;
          }).mouseleave(function() {
            if (jQuery(window).width() >= 740) {
              jQuery(this).children('ul.level1').fadeOut(100);
            }
            return false;
          });
          jQuery("#nav li.level0.drop-menu li").mouseover(function() {
            if (jQuery(window).width() >= 740) {
              jQuery(this).children('ul').css({
                top: 0,
                left: "165px"
              });
              var offset = jQuery(this).offset();
              if (offset && (jQuery(window).width() < offset.left + 325)) {
                jQuery(this).children('ul').removeClass("right-sub");
                jQuery(this).children('ul').addClass("left-sub");
                jQuery(this).children('ul').css({
                  top: 0,
                  left: "-167px"
                });
              } else {
                jQuery(this).children('ul').removeClass("left-sub");
                jQuery(this).children('ul').addClass("right-sub");
              }
              jQuery(this).children('ul').fadeIn(100);
            }
          }).mouseleave(function() {
            if (jQuery(window).width() >= 740) {
              jQuery(this).children('ul').fadeOut(100);
            }
          });


        });
        //]]>
      </script>
    </nav>
