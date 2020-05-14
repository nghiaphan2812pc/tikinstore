<%-- 
    Document   : home
    Created on : Nov 25, 2019, 6:18:27 PM
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
              <h3>Admin</h3>
              <ul>
                <li>
                  <a href="index.php">Trang chủ</a>
                </li>
                <li>Admin</li>
              </ul>
            </div>
            <!-- Breadcubs Area End Here -->
            <!-- Dashboard summery Start Here -->
            <div class="row gutters-20">
              <div class="col-xl-3 col-sm-6 col-12">
                <div class="dashboard-summery-one mg-b-20">
                  <div class="row align-items-center">
                    <div class="col-6">
                      <div class="item-icon bg-light-green ">
                        <i class="flaticon-classmates text-green"></i>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="item-content">
                        <div class="item-title">Sản phẩm</div>
                        <div class="item-number"><span class="counter" >150,000</span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 col-12">
                <div class="dashboard-summery-one mg-b-20">
                  <div class="row align-items-center">
                    <div class="col-6">
                      <div class="item-icon bg-light-blue">
                        <i class="flaticon-multiple-users-silhouette text-blue"></i>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="item-content">
                        <div class="item-title">Khách hàng</div>
                        <div class="item-number"><span class="counter" >2,250</span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Dashboard summery End Here -->
            <div class="breadcrumbs-area">

            </div>
            <div class="breadcrumbs-area">

            </div>
            <div class="breadcrumbs-area">

            </div>
            <div class="breadcrumbs-area">

            </div>
            <div class="breadcrumbs-area">

            </div>
            <div class="breadcrumbs-area">

            </div>
            <div class="breadcrumbs-area">
            </div>
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
