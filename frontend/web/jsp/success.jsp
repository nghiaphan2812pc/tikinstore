<%-- 
    Document   : ShoppingCart
    Created on : Nov 21, 2019, 6:34:10 PM
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
              <section class="main-container col2-right-layout">
                <div class="breadcrumbs">
                  <div class="inner">
                    <span></span><a href="#">Trang chủ</a>
                    <span> &raquo; </span><a href="">Đăng nhập</a>
                  </div>
                </div>
                <div class="main-container-inner">
                  <article class="col-main">
                    <div id="content">
                      <div class="dashboard">
                        <div class="page-title">
                          <h1>Đăng nhập thành công</h1>
                        </div>
                        <div class="buttons">
                            <div class=""><a href="<%=request.getContextPath()%>/productController/getAll.htm"><button class="button">Mua sắm ngay</button></a></div>
                        </div>
                      </div>
                        
                    </div>
                  </article>
                </div>
              </section>
              <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
