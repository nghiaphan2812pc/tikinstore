<%-- 
    Document   : updateproduct
    Created on : Nov 25, 2019, 9:07:31 PM
    Author     : ADMN
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %> 
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
                  <a href="index.html">Trang chủ</a>
                </li>
                <li>Chỉnh sửa sản phẩm</li>
              </ul>
            </div>
            <!-- Breadcubs Area End Here -->
            <!-- Student Table Area Start Here -->
            <div class="card height-auto">
              <div class="card-body">
                <div class="heading-layout1">
                  <div class="item-title">
                    <h3></h3>
                  </div>
                  <div class="dropdown">
                    <div class="dropdown-menu dropdown-menu-right">
                    </div>
                  </div>
                </div>
                <div class="single-info-details">
                  <div class="item-content">
                    <div class="info-table table-responsive">
                      <f:form class="new-added-form" action="update.htm" commandName="productUpdate">
                        <div class="row">
                          <div class="col-xl-12 col-lg-12 col-12 form-group">
                            <label>Mã sản phẩm</label>
                            <f:input type="text" path="productId" readonly="true" class="form-control"/>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-12 form-group">
                            <label>Tên sản phẩm</label>
                            <f:input type="text" path="productName" class="form-control"/>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-12 form-group">
                            <label>Giá</label>
                            <f:input type="text" path="price" class="form-control"/>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-12 form-group">
                            <label>Thương hiệu</label>
                            <f:input type="text" path="brand" class="form-control"/>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-12 form-group">
                            <label>Mô tả</label>
                            <f:input type="text" path="description" class="form-control"/>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-12 form-group">
                            <label>Ảnh</label>
                            <f:input type="text" path="image" class="form-control"/>
                          </div>
                          <div class="col-12 form-group mg-t-12">
                            <button type="submit" name="smb" class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Sửa</button>
                          </div>
                        </div>
                      </f:form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Student Table Area End Here -->
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
