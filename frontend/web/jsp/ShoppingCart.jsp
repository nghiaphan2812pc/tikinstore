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
                    <span> &raquo; </span><a href="#">Giỏ hàng</a>
                  </div>
                </div>
                <div class="main-container-inner">
                  <article class="col-main">
                    <div id="content">
                      <div class="dashboard">
                        <div class="page-title">
                          <h1>Shopping Cart</h1>
                        </div>
                        <form action="updateCart.htm">
                            <table border = "1">
                                <thead>
                                <th>Tên sản phẩm   </th>
                                <th>Giá </th>
                                <th>Số lượng</th>
                                <th>Tổng tiền:</th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listCart}" var="cart">
                                        <tr>
                                            <td>${cart.product.productName}</td>
                                            <td>${cart.product.price}</td>
                                            <td><input type="text" name="quantity" value="${cart.quantity}"/></td>
                                            <td>${cart.product.price*cart.quantity}</td>
                                            <td>
                                                <button class="button" type="submit">Update</button>
                                                <button class="button"><a href="removeCart.htm?productId=${cart.product.productId}">Xóa</a></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td colspan="3">Tổng hóa đơn</td>
                                        <td colspan="2">${totalAmount}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <div class="buttons">
                            <div class=""><a href="<%=request.getContextPath()%>/productController/getAll.htm"><button class="button">Tiếp tục mua hàng</button></a></div>
                        </div>
                        <div class="buttons">
                            <div class=""><a href="<%=request.getContextPath()%>/productController/getAll.htm"><button class="button">Gửi đơn hàng</button></a></div>
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
