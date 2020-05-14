<%-- 
    Document   : sidebar
    Created on : Nov 25, 2019, 6:57:10 PM
    Author     : ADMN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="sidebar-main sidebar-menu-one sidebar-expand-md sidebar-color">
            <div class="mobile-sidebar-header d-md-none">
              <div class="header-logo">
                <a href="index.php"><img src="img/logo1.png" alt="logo"></a>
              </div>
            </div>
            <div class="sidebar-menu-content">
              <ul class="nav nav-sidebar-menu sidebar-toggle-view">
                <li class="nav-item sidebar-nav-item">
                  <a href="#" class="nav-link"><i class="flaticon-classmates"></i><span>Sản phẩm</span></a>
                  <ul class="nav sub-group-menu">
                    <li class="nav-item">
                      <a href="<%=request.getContextPath()%>/productController/getAll.htm" class="nav-link"><i class="fas fa-angle-right"></i>Danh sách sản phẩm</a>
                    </li>
                    <li class="nav-item">
                      <a href="<%=request.getContextPath()%>/productController/initInsert.htm" class="nav-link"><i class="fas fa-angle-right"></i>Thêm sản phẩm</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item sidebar-nav-item">
                  <a href="#" class="nav-link"><i class="flaticon-multiple-users-silhouette"></i><span>Khách hàng</span></a>
                  <ul class="nav sub-group-menu">
                    <li class="nav-item">
                      <a href="<%=request.getContextPath()%>/userController/getAll.htm" class="nav-link"><i class="fas fa-angle-right"></i>Danh sách khách hàng</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item sidebar-nav-item">
                  <a href="#" class="nav-link"><i class="flaticon-classmates"></i><span>Đơn hàng</span></a>
                  <ul class="nav sub-group-menu">
                    <li class="nav-item">
                      <a href="all_discount.php" class="nav-link"><i class="fas fa-angle-right"></i>Danh sách đơn hàng</a>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
