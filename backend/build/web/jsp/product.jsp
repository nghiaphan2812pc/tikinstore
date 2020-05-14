<%-- 
    Document   : product
    Created on : Nov 25, 2019, 6:52:20 PM
    Author     : ADMN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"></jsp:include>

    <body>
      <div id="wrapper" class="wrapper bg-ash">
        <!-- Header Menu Area Start Here -->
        <jsp:include page="header.jsp"></jsp:include>
        <!-- Header Menu Area End Here -->
        <!-- Page Area Start Here -->
        <div class="dashboard-page-one">
          <!-- Sidebar Area Start Here -->
           <jsp:include page="sidebar.jsp"></jsp:include>
          <!-- Sidebar Area End Here -->
          <div class="dashboard-content-one">
            <!-- Breadcubs Area Start Here -->
            <div class="breadcrumbs-area">
              <h3>Sản phẩm</h3>
              <ul>
                <li>
                  <a href="index.php">Trang chủ</a>
                </li>
                <li>Danh sách sản phẩm</li>
              </ul>
            </div>
            <!-- Breadcubs Area End Here -->
            <!-- Teacher Table Area Start Here -->
            <div class="card height-auto">
              <div class="card-body">
                <div class="heading-layout1">
                  <div class="item-title">
                    <h3>Danh sách sản phẩm</h3>
                  </div>
                </div>
                <div class="table-responsive">
                  <table class="table display data-table text-nowrap">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Ảnh sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá tiền</th>
                        <th>Thương hiệu</th>
                        <th>Mô tả</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listPro}" var="pro">
                      <tr>
                        <td>${pro.productId}</div>
                        </td>
                        <td class="text-center">
                          <img src="${pro.image}" alt="">
                        </td>
                        <td>${pro.productName}</td>
                        <td>${pro.price}đ</td>
                        <td>${pro.brand}</td>
                        <td>${pro.description}</td>
                        <td>
                          <div class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                              <span class="flaticon-more-button-of-three-dots"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                              <a class="dropdown-item" href="<%=request.getContextPath()%>/productController/delete.htm?productId=${pro.productId}"><i class="fas fa-trash text-orange-dark"></i>  Xóa</a>
                              <a class="dropdown-item" href="<%=request.getContextPath()%>/productController/initUpdate.htm?productId=${pro.productId}"><i class="fas fa-cogs text-dark-pastel-green"></i>   Sửa</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- Teacher Table Area End Here -->
          </div>
        </div>
        <!-- Page Area End Here -->
      </div>
       <!-- jquery-->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/jquery-3.3.1.min.js"></script>
        <!-- Plugins js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/plugins.js"></script>
        <!-- Popper js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/bootstrap.min.js"></script>
        <!-- Counterup Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/jquery.counterup.min.js"></script>
        <!-- Moment Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/moment.min.js"></script>
        <!-- Waypoints Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/jquery.waypoints.min.js"></script>
        <!-- Scroll Up Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/jquery.scrollUp.min.js"></script>
        <!-- Full Calender Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/fullcalendar.min.js"></script>
        <!-- Chart Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/Chart.min.js"></script>
        <!-- Custom Js -->
        <script type="text/javascript" src="/ThietkegiaodienAdmin/jsp/js/main.js"></script>
    </body>
</html>
